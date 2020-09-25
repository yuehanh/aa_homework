document.addEventListener("DOMContentLoaded", () => {
    // toggling restaurants

    const toggleLi = (e) => {
        const li = e.target;
        if (li.className === "visited") {
            li.className = "";
        } else {
            li.className = "visited";
        }
    };

    document.querySelectorAll("#restaurants li").forEach((li) => {
        li.addEventListener("click", toggleLi);
    });

    // adding SF places as list items

    // --- your code here!

    const button = document.querySelector(".favorite-submit");
    // debugger
    button.addEventListener("click", (event) => {
        event.preventDefault();
        const ul = document.getElementById("restaurants");
        const li = document.createElement("li");
        const input = document.querySelector(".favorite-input");
        const place = input.value;

        input.value = "";

        li.textContent = place;

        ul.appendChild(li);
    });

    // adding new photos

    // --- your code here!
    const showPhotoForm = () => {
        const photoForm = document.querySelector(".photo-form-container");
        if (photoForm.className === "photo-form-container") {
            photoForm.className = "photo-form-container hidden";
        } else {
            photoForm.className = "photo-form-container";
        }
    };

    const photoButton = document.querySelector(".photo-show-button");
    photoButton.addEventListener("click", showPhotoForm);

    const addPhoto = (event) => {
        event.preventDefault();

        const photoUrlEl = document.querySelector(".photo-url-input");
        const photoUrl = photoUrlEl.value;
        photoUrlEl.value = "";

        const img = document.createElement("img");
        img.src = photoUrl;

        const ul = document.querySelector(".dog-photos");
        ul.appendChild(img);
    };

    const addPhotoButton = document.querySelector(".photo-url-submit");
    addPhotoButton.addEventListener("click", addPhoto);
});
