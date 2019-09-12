const clickFollow = () => {
  const buttonFollow = document.querySelector('.opcao_following');
  const buttonUnfollow = document.querySelector('.opcao_unfollowing');
  if (buttonFollow) {
    buttonFollow.addEventListener('click', () => {
      console.log("Follow")
      buttonFollow.innerText = 'Parar de seguir'
      buttonFollow.style.backgroundColor = '#FF3333'
    })
  } else if (buttonUnfollow) {
    buttonUnfollow.addEventListener('click', () => {
      console.log("Unfollow")
      buttonUnfollow.innerText = 'Seguir'
      buttonUnfollow.style.backgroundColor = '#F26332'
    })
  }
}

export default clickFollow;
