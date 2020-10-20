const interests = [
  'Archery',
  'Beekeeping',
  'Camping',
  'Computer Programming',
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
  'Mountain Biking',
  'Mushroom Hunting',
  'Painting',
  'Parkour',
  'Rock Climbing',
  'Roller Derby',
  'Running',
  'Sailing',
  'Skiing',
  'Snowboarding',
  'Speedcubing',
  'Tai Chi',
  'Ultimate Disc',
  'Whittling',
  'Yoga'
];
$(document).ready(function () {
  $('.autocomplete').autocomplete({
    source: interests
  });
    $('#search_button').click(function (e) {
        e.preventDefault();
        const searchInterest = $('#search_text').val();
        let index = 0;
        interests.forEach(interest => {
            if (interest === searchInterest) {
                const interestID = index + 1;
                const url = 'http://127.0.0.1:5000/users_search/' + interestID;
                window.location.href = url;
            }
            index++;
        });
    });

    $('#search_text').keyup(function (e) {
        if (e.which == 13) {
            $('#search_button').click();
        }
    });
});
// Get interest name when search button is clicked
// Use interest name to get interest_id
// Use interest_id in user_search/<int: interest_id> to return users
