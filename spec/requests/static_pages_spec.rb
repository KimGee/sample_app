require 'spec_helper'

describe "Static pages" do

    describe "Home page" do
        it "should have the content 'Sample App'" do
            visit '/static_pages/home'
            expect(page).to have_content('Sample App')
        end

        it "should have the title 'Home'" do
            visit '/static_pages/home'
            expect(page).to have_title('CS 232 Rails Development | Home')
        end
    end

    describe "Help page" do
        it "should have the content 'Help'" do
            visit '/static_pages/help'
            expect(page).to have_content('Help')
        end

        it "should have the title 'Help'" do
            visit '/static_pages/help'
            expect(page).to have_title('CS 232 Rails Development | Help')
        end
    end

    describe "About page" do
        it "should have the content 'About Us'" do
            visit '/static_pages/about'
            expect(page).to have_content('About Us')
        end

        it "should have the title 'About Us'" do
            visit '/static_pages/about'
            expect(page).to have_title('CS 232 Rails Development | About Us')
        end
    end

    describe "Contact page" do
        it "should have the content 'Contact Us'" do
            visit '/static_pages/contact'
            expect(page).to have_content('Contact Us')
        end

        it "should have the title 'Contact Us'" do
            visit '/static_pages/contact'
            expect(page).to have_title('CS 232 Rails Development | Contact Us')
        end

        it "should contain the words 'CS 232 Contact" do
            visit '/static_pages/contact'
            expect(page).to have_content('CS 232 Contact')
        end

        it "should contain an <h1 class='page-title'> element" do
            visit '/static_pages/contact'
            expect(page).to have_selector('h1.page-title')
        end

        it "should contain a Definition List with a <dl>" do
            visit '/static_pages/contact'
            expect(page).to have_selector('dl')
        end

        it "should contain an HTML element <dt> element" do
            visit '/static_pages/contact'
            expect(page).to have_selector('dt')
        end

        it "should contain an HTML element <dd> element" do
            visit '/static_pages/contact'
            expect(page).to have_selector('dd')
        end

        it "should contain an HTML element named <section class='main'>" do
            visit '/static_pages/contact'
            expect(page).to have_selector('section.main')
        end

        it "should contain an `h1.page-title` selector in css" do
            visit '/static_pages/contact'
            expect(page).to have_css('h1.page-title')
        end

        it "should contain a `.main selector` in css" do
            visit '/static_pages/contact'
            expect(page).to have_css('.main')
        end

    end

end
