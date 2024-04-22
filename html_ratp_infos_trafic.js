const puppeteer = require('puppeteer');

(async () => {
  // Launch the browser and open a new blank page
  const browser = await puppeteer.launch({});
  const page = await browser.newPage();
  await page.setUserAgent('Mozilla/5.0 (X11; Linux x86_64; rv:109.0) Gecko/20100101 Firefox/115.0')
  // Navigate the page to a URL
  await page.goto('https://www.ratp.fr/infotrafic-render-ajax');
  const pageSourceHTML = await page.content();
  await browser.close();
  console.log(pageSourceHTML);
})();
