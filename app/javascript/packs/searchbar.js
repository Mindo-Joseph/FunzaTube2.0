import algoliasearch from 'algoliasearch/lite';
import instantsearch from 'instantsearch.js';
import { searchBox, hits } from 'instantsearch.js/es/widgets';
import { connectSearchBox } from 'instantsearch.js/es/connectors'
const searchClient = algoliasearch(
    'GGP209EGSF',
'ce149eab110e4e402d2d03d3c7aa5601'
);
const autocomplete = connectSearchBox(
    ({ indices, refine, widgetParams }, isFirstRendering) => {
        const { container, onSelectChange } = widgetParams;

        if (isFirstRendering) {
            container.html('<select id="ais-autocomplete"></select>');

            container.find('select').selectize({
                options: [],
                valueField: 'name',
                labelField: 'name',
                searchField: 'name',
                highlight: false,
                onType: refine,
                onChange(value) {
                    onSelectChange(value);
                    refine(value);
            }

            });

            return;
        }

        const [select] = container.find('select');

        indices.forEach(index => {
            select.selectize.clearOptions();
            index.results.hits.forEach(hit => select.selectize.addOption(hit));
            select.selectize.refreshOptions(select.selectize.isOpen);
        });
    }
);
const suggestions = instantsearch({
    indexName: 'Video',
    searchClient,
});

suggestions.addWidgets([
    autocomplete({
        container: $('#autocomplete'),
        onSelectChange(value) {
            // The callback is triggered each time a value is selected
            search.helper.setQuery(value).search();
        },
    })
]);
const search = instantsearch({
    indexName: 'Video',
    searchClient,
});

search.addWidgets([
    hits({
        container: '#hits',
        templates: {
            item: `
        <div>
          <header class="hit-name">
            {{#helpers.highlight}}{ "attribute": "name" }{{/helpers.highlight}}
          </header>
          <p class="hit-description">
            {{#helpers.highlight}}{ "attribute": "description" }{{/helpers.highlight}}
          </p>
        </div>
      `,
        },
    })
]);

suggestions.start();
search.start();