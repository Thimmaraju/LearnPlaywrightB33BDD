const { Given, When, Then } = require('@cucumber/cucumber')
const { expect } = require("@playwright/test")

Given('User Launch the Application', async function () {

    await page.goto('https://opensource-demo.orangehrmlive.com/web/index.php/auth/login')

});


When('User Enter username {string} and password as {string}', async function (username, password) {

    await page.locator('//input[@name="username"]').fill(username)

    await page.locator('//input[@name="password"]').fill(password)
});

When('User clicks on login button', async function () {

    await page.locator('//button[@type="submit"]').click()
});


Then('User should be navigated to Dashboard page', async function () {

    await expect(page).toHaveURL('https://opensource-demo.orangehrmlive.com/web/index.php/dashboard/index')

    await expect(page.locator("//h6[text()='Dashboard']")).toBeVisible()
});


 Then('User should get login error message',  async function () {
        
    await expect(page.locator("//p[text()='Invalid credentials']")).toBeVisible()
         });