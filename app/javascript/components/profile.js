const links = document.querySelectorAll('.card-remove-link')

const updateMyCourses = () => {
    links.forEach(link => {
    link.addEventListener("click", function () {
      link.parentElement.parentElement.parentElement.remove();
    });
  });
}

export { updateMyCourses };
