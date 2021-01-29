const uploadFile = () => {
    const upload = document.querySelector('.upload');
    upload.addEventListener('submit', function (e) {
        e.preventDefault();
        let file = e.target.UploadFile.files[0];
        let formData = new FormData();
        formData.append('file', file);
        fetch('http://localhost:3000/uploads', {
            method: 'POST',
            body: formData
        }).then(resp => resp.json())
            .then(data => {
                if (data.errors) {
                    console.errors(data.errors)
                } else {
                    console.log(data);
                }
            })
    });
}
uploadFile();