User.create(name: 'Paul Sivilotti', is_instructor: true, email: 'sivilotti@osu.edu', password: 'asdfgh',
            password_confirmation: 'asdfgh')
User.create(name: 'Simon Kirksey', is_instructor: false, email: 'kirksey@osu.edu', password: 'asdfgh',
            password_confirmation: 'asdfgh')
User.create(name: 'Antoni Rempala', is_instructor: false, email: 'rempala@osu.edu', password: 'asdfgh',
            password_confirmation: 'asdfgh')
User.create(name: 'Kunal Arya', is_instructor: false, email: 'arya@osu.edu', password: 'asdfgh',
            password_confirmation: 'asdfgh')
User.create(name: 'Sam Cohen', is_instructor: false, email: 'cohen@osu.edu', password: 'asdfgh',
            password_confirmation: 'asdfgh')
User.create(name: 'Zaid Badiger', is_instructor: false, email: 'badiger@osu.edu', password: 'asdfgh',
            password_confirmation: 'asdfgh')
User.create(name: 'John Smith', is_instructor: false, email: 'smith@osu.edu', password: 'asdfgh',
            password_confirmation: 'asdfgh')

Course.create(name: '3901: Web Applications', user_id: 1)

Section.create(section_number: 100_101, course_id: 1)

Presentation.create(title: 'Tech Talk Group A', section_id: 1)
Presentation.create(title: 'Tech Talk Group B', section_id: 1)

Roster.create(section_id: 1, user_id: 4)
Roster.create(section_id: 1, user_id: 3)
Roster.create(section_id: 1, user_id: 2)
Roster.create(section_id: 1, user_id: 5)
Roster.create(section_id: 1, user_id: 6)
Roster.create(section_id: 1, user_id: 7)

Presenter.create(user_id: 6, presentation_id: 1)
Presenter.create(user_id: 3, presentation_id: 1)
Presenter.create(user_id: 5, presentation_id: 1)
Presenter.create(user_id: 2, presentation_id: 2)
Presenter.create(user_id: 4, presentation_id: 2)
Presenter.create(user_id: 7, presentation_id: 2)

Review.create(user_id: 4, presentation_id: 1, score: 4, comment: 'Pretty bad, could use some work.')
Review.create(user_id: 5, presentation_id: 2, score: 9, comment: 'Very nice job, I really enjoyed that!')
Review.create(user_id: 6, presentation_id: 2, score: 7, comment: 'Good job, some improvements could be made.')
Review.create(user_id: 2, presentation_id: 1, score: 3, comment: 'That was rough!')
