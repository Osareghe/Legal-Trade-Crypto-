<!DOCTYPE html>
<lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Legal Trade Crypto</title>
  <link rel="stylesheet" href="style.css" />
  <style>
    /* Button styling */
    .btn {
      display: block;
      width: fit-content;
      margin: 20px auto;
      padding: 10px 20px;
      background-color: white;
      color: black;
      text-decoration: none;
      border-radius: 5px;
      border: 1px solid #ccc;
    }
    /* Style for coin logos (BTC, ETH, USDT) */
    .coin-logo {
      width: 30px;
      height: auto;
      vertical-align: middle;
      margin-right: 5px;
    }
    /* Slider styles */
    .slider {
      width: 100%;
      overflow: hidden;
      position: relative;
    }

    .slider-wrapper {
      display: flex;
      transition: transform 0.5s ease-in-out;
    }

    .slider-image {
      width: 100%;
      flex-shrink: 0;
    }
    /* Quotation styles */
    .quotation .coin-item {

      align-items: center;
      background-color: ##C70039; /* Adjust background color */
      border-radius: 10px; /* Adjust border radius */
      padding: 10px; /* Adjust padding */
      margin-bottom: 5px; /* Add space between items */
    }

    .quotation .coin-icon {
      width: 40px; /* Adjust icon size */
      height: 40px; /* Adjust icon size */
      margin-right: 10px;
    }

    .quotation .coin-item span {
      font-size: 1.2em; /* Adjust text size */
      color: white; /* Adjust text color */
    }
  </style>

  <!-- JivoChat Widget -->
  <script src="//code.jivosite.com/widget/wV6zTzxS5q" async></script>

</head>
<body>

  <header class="top-bar">
    <h1>Legal Trade Crypto</h1>
    <div class="language-switch">
      <img src="https://i.postimg.cc/vT1Nz6v8/IMG-0291.jpg" alt="English" />
      <span></span>
    </div>
  </header>

  <section class="slider">
    <div class="slider-wrapper" id="slider-wrapper">
      <img src="https://i.postimg.cc/ZKHwdHmP/IMG-0297.jpg" alt="Slide 1" class="slider-image">
      <img src="https://github.com/bitdigitalmining/Imagehosting/blob/main/IMG_9536.jpeg?raw=true" alt="Slide 2" class="slider-image">
      <img src="https://github.com/signup-login/Im-/blob/main/b5c49e60-2888-499a-b25a-e33b5f20c015.jpeg?raw=true" alt="Slide 3" class="slider-image">
    </div>
  </section>

  <a href="signup.html" class="btn">Get Started</a>

  <section class="financing">
    <h2>Financing</h2>
    <div class="financing-cards" id="financing-cards">
      <div class="financing-card">
        <div class="financing-card-title">
          <img src="https://i.postimg.cc/JnKfKkHS/IMG-9529.png?raw=true"
               alt="USDT Logo" class="coin-logo">
          USDT <span>120days</span>
        </div>
        <div class="financing-card-yield">63.5%<br><span>yield</span></div>
      </div>
      <div class="financing-card">
        <div class="financing-card-title">
          <img src="https://i.postimg.cc/JnKfKkHS/IMG-9529.png?raw=true"
               alt="USDT Logo" class="coin-logo">
          USDT <span>90days</span>
        </div>
        <div class="financing-card-yield">52.8%<br><span>yield</span></div>
      </div>
      <div class="financing-card">
        <div class="financing-card-title">
          <img src="https://i.postimg.cc/JnKfKkHS/IMG-9529.png?raw=true"
               alt="USDT Logo" class="coin-logo">
          USDT <span>60days</span>
        </div>
        <div class="financing-card-yield">30.6%<br><span>yield</span></div>
      </div>
    </div>
    <a href="#" class="more-link"></a>
  </section>

  <section class="quotation">
  <h2>Quotation</h2>
    <ul class="quotation-list" id="quotation-list">
      <li>
        <div class="coin-item">
          <img src="https://i.ibb.co/nsQFhNC1/IMG-9530.png?raw=true" alt="BTC Logo" class="coin-icon">
          <span>BTC</span>
        </div>
        <div class="coin-price">$90435</div>
        <div class="coin-change positive">+3.3%</div>
      </li>
      <li>
        <div class="coin-item">
          <img src="https://i.postimg.cc/63w0qbqN/IMG-9531.png?raw=true" alt="ETH Logo" class="coin-icon">
          <span>ETH</span>
        </div>
        <div class="coin-price">$2239.9</div>
        <div class="coin-change positive">+3.2%</div>
      </li>
      <li>
        <div class="coin-item">
          <img src="https://i.postimg.cc/JnKfKkHS/IMG-9529.png?raw=true" alt="USDT Logo" class="coin-icon">
          <span>USDT</span>
        </div>
        <div class="coin-price">$1.0007</div>
        <div class="coin-change positive">+0.05%</div>
      </li>
    </ul>
  </section>

  <section class="revenue">
    <h2>Revenue</h2>
    <table>
      <thead>
        <tr>
          <th>username</th>
          <th>amount</th>
          <th>date</th>
        </tr>
      </thead>
      <tbody id="revenueTable">
                <!-- Data will be inserted here -->
            </tbody>
        </table>
    </div>
    <script>
        function generateUsername() {
            const chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
            return chars[Math.floor(Math.random() * chars.length)] + "*".repeat(Math.floor(Math.random() * 5) + 3) +
                   chars[Math.floor(Math.random() * chars.length)];
        }

        function generateAmount() {
            return (Math.random() * (789000 - 90000) + 90000).toFixed(2);
        }

        function getCurrentDate() {
            return new Date().toISOString().split("T")[0]; // YYYY-MM-DD
        }

        function updateTable() {
            const tableBody = document.getElementById("revenueTable");

            let row = `<tr>
                <td>${generateUsername()}</td>
                <td>${generateAmount()}</td>
                <td>${getCurrentDate()}</td>
            </tr>`;

            tableBody.insertAdjacentHTML("afterbegin", row);

            if (tableBody.rows.length > 10) {
                tableBody.deleteRow(10);
            }
        }

        for (let i = 0; i < 8; i++) {
            updateTable();
        }

        setInterval(updateTable, 3000);
    </script>


  <nav class="bottom-nav">
    <a href="#" class="bottom-nav-link active">
      <span>Home</span>
    </a>
    <a href="#" class="bottom-nav-link">
      <span>Financing</span>
    </a>
    <a href="#" class="bottom-nav-link">
      <span>Vip</span>
    </a>
    <a href="#" class="bottom-nav-link">
      <span>Account</span>
    </a>
  </nav>


<!-- Start of Tawk.to Script -->
<script type="text/javascript">
var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date();
(function() {
    var s1 = document.createElement("script"),
        s0 = document.getElementsByTagName("script")[0];
    s1.async = true;
    s1.src = 'https://embed.tawk.to/67d987edb54815190f42aab9/default';
    s1.charset = 'UTF-8';
    s1.setAttribute('crossorigin', '*');
    s0.parentNode.insertBefore(s1, s0);
})();
</script>
<!-- End of Tawk.to Script -->

  <script src="script.js"></script>
</body>
</html>
