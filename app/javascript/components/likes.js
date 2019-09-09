
const addLikes = () => {
  const likes = document.querySelectorAll('.card-add-link')
  likes.forEach((like) => {
    like.addEventListener('click',()=> {
      like.style.color = '#f96332'
    })
  })
}

export { addLikes };
