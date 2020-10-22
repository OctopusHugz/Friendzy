const interests = [
  'Archery',
  'Beekeeping',
  'Camping',
  'Computer programming',
  'Darts',
  'Fashion',
  'Gaming',
  'Gongoozling',
  'Hiking',
  'Hydroponics',
  'Juggling',
  'Kayaking',
  'Lockpicking',
  'Magic',
  'Marbles',
  'Mountain biking',
  'Mushroom hunting',
  'Painting',
  'Parkour',
  'Rock climbing',
  'Roller derby',
  'Running',
  'Sailing',
  'Skiing',
  'Snowboarding',
  'Speedcubing',
  'Tai chi',
  'Ultimate disc',
  'Whittling',
  'Yoga'
];
$(document).ready(function () {
  $('.autocomplete').autocomplete({
    source: interests
  });
  // Click search button returns users based on interest in search bar
  $('#search_button').click(function (e) {
    e.preventDefault();
    const searchInterest = $('#search_text').val();
    let index = 0;
    interests.forEach(interest => {
      const parsedInterest = searchInterest.charAt(0).toUpperCase() + searchInterest.slice(1);
      if (interest === parsedInterest) {
        const interestID = index + 1;
        let url = '';
        if (window.location.hostname.slice(0, 3) === '127') {
          url = interestID;
        } else {
          url = 'users_search/' + interestID;
        }
        window.location.href = url;
      }
      index++;
    });
  });
  // Allow pressing enter to execute code above
  $('#search_text').keyup(function (e) {
    e.preventDefault();
    if (e.which === 13) {
      $('#search_button').click();
    }
  });
  // Click random button to return a random interest
  $('#random_button').click(function (e) {
    e.preventDefault();
    const interestID = Math.floor(Math.random() * 30) + 1;
    let url = '';
    if (window.location.hostname.slice(0, 3) === '127') {
      url = interestID;
    } else {
      url = 'users_search/' + interestID;
    }
    window.location.href = url;
  });
  // Interests below user cards are clickable links
  $('button.link').click(function (e) {
    e.preventDefault();
    const searchInterest = $(this).attr('id');
    let index = 0;
    interests.forEach(interest => {
      if (interest === searchInterest) {
        const interestID = index + 1;
        let url = '';
        if (window.location.hostname.slice(0, 3) === '127') {
          url = interestID;
        } else {
          url = 'users_search/' + interestID;
        }
        window.location.href = url;
      }
      index++;
    });
  });
});
