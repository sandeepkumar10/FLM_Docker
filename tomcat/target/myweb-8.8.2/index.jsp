<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />
  <title>NexusShop · Modern Store</title>
  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&family=Plus+Jakarta+Sans:wght@500;600;700;800&display=swap" rel="stylesheet" />
  <!-- Font Awesome 6 -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    :root {
      --bg: #f0fdf4;
      --surface: #ffffff;
      --primary: #064e3b;
      --soft-text: #374151;
      --accent: #059669;
      --accent-light: #10b981;
      --accent-soft: #d1fae5;
      --accent-glow: #a7f3d0;
      --border-light: #d1fae5;
      --shadow-card: 0 20px 35px -8px rgba(6, 78, 59, 0.08), 0 10px 15px -6px rgba(6, 78, 59, 0.05);
      --shadow-hover: 0 28px 40px -12px rgba(6, 78, 59, 0.15);
      --radius-lg: 28px;
      --radius-md: 18px;
      --radius-sm: 14px;
      --gradient-hero: linear-gradient(135deg, #064e3b 0%, #059669 50%, #10b981 100%);
      --gradient-card: linear-gradient(145deg, #ecfdf5, #ffffff);
    }

    body {
      font-family: 'Inter', system-ui, -apple-system, sans-serif;
      background: var(--bg);
      color: var(--primary);
      line-height: 1.6;
      -webkit-font-smoothing: antialiased;
      scroll-behavior: smooth;
    }

    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 28px;
    }

    /* header */
    .header {
      position: sticky;
      top: 0;
      z-index: 50;
      background: rgba(255, 255, 255, 0.85);
      backdrop-filter: blur(20px);
      -webkit-backdrop-filter: blur(20px);
      border-bottom: 1px solid rgba(6, 78, 59, 0.06);
      padding: 16px 0;
      box-shadow: 0 2px 20px rgba(6, 78, 59, 0.04);
    }

    .header .container {
      display: flex;
      align-items: center;
      justify-content: space-between;
    }

    .logo {
      font-family: 'Plus Jakarta Sans', sans-serif;
      font-weight: 800;
      font-size: 1.9rem;
      letter-spacing: -0.5px;
      color: #064e3b;
      display: flex;
      align-items: center;
      gap: 8px;
    }
    .logo i {
      color: #10b981;
      font-size: 2rem;
    }
    .logo span {
      background: var(--gradient-hero);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }

    .nav-links {
      display: flex;
      gap: 4px;
      list-style: none;
    }
    .nav-links a {
      padding: 10px 18px;
      border-radius: 40px;
      font-weight: 500;
      color: #374151;
      display: flex;
      align-items: center;
      gap: 6px;
      transition: all 0.25s ease;
      font-size: 0.95rem;
      position: relative;
    }
    .nav-links a:hover {
      background: var(--accent-soft);
      color: #059669;
      transform: translateY(-1px);
    }
    .nav-links a i {
      font-size: 0.9rem;
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 16px;
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: #ffffff;
      border: 2px solid #d1fae5;
      border-radius: 50px;
      padding: 10px 20px;
      gap: 10px;
      transition: all 0.3s ease;
      box-shadow: 0 2px 8px rgba(6, 78, 59, 0.04);
    }
    .search-wrap:focus-within {
      border-color: #10b981;
      box-shadow: 0 0 0 3px rgba(16, 185, 129, 0.1);
    }
    .search-wrap i {
      color: #059669;
      font-size: 1rem;
    }
    .search-wrap input {
      border: none;
      background: transparent;
      outline: none;
      font-size: 0.95rem;
      width: 200px;
      color: #064e3b;
    }
    .search-wrap input::placeholder {
      color: #9ca3af;
    }
    
    .icon-btn {
      background: transparent;
      border: none;
      font-size: 1.4rem;
      color: #374151;
      cursor: pointer;
      position: relative;
      padding: 8px;
      transition: all 0.2s ease;
      border-radius: 50%;
    }
    .icon-btn:hover {
      color: #059669;
      background: #d1fae5;
      transform: scale(1.1);
    }
    .cart-badge {
      position: absolute;
      top: 0;
      right: 0;
      background: #059669;
      color: white;
      font-size: 0.7rem;
      font-weight: 700;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      box-shadow: 0 2px 8px rgba(5, 150, 105, 0.3);
      animation: pulse 2s infinite;
    }

    @keyframes pulse {
      0%, 100% { transform: scale(1); }
      50% { transform: scale(1.1); }
    }

    .mobile-menu-toggle {
      display: none;
      background: none;
      border: none;
      font-size: 1.6rem;
      color: #064e3b;
      cursor: pointer;
    }

    /* hero */
    .hero {
      background: var(--gradient-hero);
      border-radius: 48px;
      margin: 28px auto 40px;
      padding: 60px 56px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 32px;
      position: relative;
      overflow: hidden;
    }
    .hero::before {
      content: '';
      position: absolute;
      top: -50%;
      right: -20%;
      width: 400px;
      height: 400px;
      background: rgba(255, 255, 255, 0.05);
      border-radius: 50%;
      animation: float 6s ease-in-out infinite;
    }
    @keyframes float {
      0%, 100% { transform: translateY(0) rotate(0deg); }
      50% { transform: translateY(-20px) rotate(10deg); }
    }
    .hero-text {
      position: relative;
      z-index: 1;
    }
    .hero-text h1 {
      font-family: 'Plus Jakarta Sans', sans-serif;
      font-size: 3.2rem;
      font-weight: 800;
      line-height: 1.2;
      color: white;
      margin-bottom: 12px;
    }
    .hero-text p {
      font-size: 1.2rem;
      color: rgba(255, 255, 255, 0.9);
      margin: 16px 0 28px;
      max-width: 500px;
    }
    .btn-group {
      display: flex;
      gap: 14px;
      flex-wrap: wrap;
    }
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      padding: 14px 28px;
      border-radius: 40px;
      font-weight: 600;
      border: none;
      cursor: pointer;
      font-size: 1rem;
      transition: all 0.3s ease;
      text-transform: uppercase;
      letter-spacing: 0.5px;
    }
    .btn-primary {
      background: white;
      color: #064e3b;
      box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
    }
    .btn-primary:hover {
      transform: translateY(-2px);
      box-shadow: 0 15px 40px rgba(0, 0, 0, 0.2);
      background: #f0fdf4;
    }
    .btn-outline {
      background: transparent;
      border: 2px solid rgba(255, 255, 255, 0.5);
      color: white;
    }
    .btn-outline:hover {
      background: rgba(255, 255, 255, 0.1);
      border-color: white;
    }
    .hero-image {
      position: relative;
      z-index: 1;
      font-size: 10rem;
      color: rgba(255, 255, 255, 0.2);
    }

    /* sections */
    .section-header {
      text-align: center;
      margin-bottom: 32px;
    }
    .section-title {
      font-family: 'Plus Jakarta Sans', sans-serif;
      font-size: 2.4rem;
      font-weight: 700;
      color: #064e3b;
      margin-bottom: 8px;
    }
    .section-sub {
      color: #6b7280;
      font-size: 1.1rem;
    }

    .category-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
      gap: 20px;
      margin-bottom: 56px;
    }
    .category-card {
      background: var(--surface);
      border-radius: var(--radius-md);
      padding: 28px 18px;
      text-align: center;
      box-shadow: var(--shadow-card);
      transition: all 0.3s ease;
      cursor: pointer;
      border: 2px solid transparent;
      position: relative;
      overflow: hidden;
    }
    .category-card::before {
      content: '';
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      height: 4px;
      background: var(--gradient-hero);
      transform: scaleX(0);
      transition: transform 0.3s ease;
    }
    .category-card:hover {
      transform: translateY(-8px);
      box-shadow: var(--shadow-hover);
      border-color: #d1fae5;
    }
    .category-card:hover::before {
      transform: scaleX(1);
    }
    .category-card i {
      font-size: 2.8rem;
      color: #059669;
      margin-bottom: 14px;
      transition: transform 0.3s ease;
    }
    .category-card:hover i {
      transform: scale(1.1) rotate(-5deg);
    }
    .category-card h4 {
      font-weight: 600;
      font-size: 1.1rem;
      color: #064e3b;
    }

    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
      gap: 28px;
      margin-bottom: 56px;
    }
    .product-card {
      background: white;
      border-radius: var(--radius-lg);
      overflow: hidden;
      box-shadow: var(--shadow-card);
      transition: all 0.3s ease;
      display: flex;
      flex-direction: column;
      border: 1px solid #e5e7eb;
    }
    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-hover);
      border-color: #a7f3d0;
    }
    .product-img {
      height: 240px;
      background: var(--gradient-card);
      display: flex;
      align-items: center;
      justify-content: center;
      position: relative;
      overflow: hidden;
    }
    .product-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: transform 0.5s ease;
    }
    .product-card:hover .product-img img {
      transform: scale(1.05);
    }
    .product-badge {
      position: absolute;
      top: 12px;
      left: 12px;
      background: #059669;
      color: white;
      padding: 6px 12px;
      border-radius: 20px;
      font-size: 0.8rem;
      font-weight: 600;
      box-shadow: 0 4px 12px rgba(5, 150, 105, 0.3);
    }
    .product-info {
      padding: 20px 18px;
      flex: 1;
    }
    .product-info h5 {
      font-weight: 700;
      font-size: 1.15rem;
      margin-bottom: 6px;
      color: #064e3b;
    }
    .category-tag {
      font-size: 0.8rem;
      color: #059669;
      background: #d1fae5;
      padding: 4px 12px;
      border-radius: 20px;
      display: inline-block;
      margin: 8px 0;
      font-weight: 500;
    }
    .price-row {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-top: 12px;
    }
    .price-container {
      display: flex;
      align-items: baseline;
      gap: 8px;
    }
    .price {
      font-weight: 700;
      font-size: 1.4rem;
      color: #064e3b;
    }
    .old-price {
      text-decoration: line-through;
      color: #9ca3af;
      font-size: 0.95rem;
      font-weight: 500;
    }
    .rating {
      display: flex;
      align-items: center;
      gap: 4px;
    }
    .stars {
      color: #f59e0b;
      font-size: 0.95rem;
      letter-spacing: 2px;
    }
    .rating-count {
      color: #6b7280;
      font-size: 0.85rem;
      font-weight: 500;
    }
    .product-actions {
      display: flex;
      padding: 0 18px 18px;
      gap: 10px;
    }
    .add-btn {
      flex: 1;
      background: #059669;
      color: white;
      border: none;
      padding: 12px;
      border-radius: 30px;
      font-weight: 600;
      cursor: pointer;
      transition: all 0.3s ease;
      font-size: 0.95rem;
    }
    .add-btn:hover {
      background: #064e3b;
      transform: translateY(-2px);
      box-shadow: 0 8px 20px rgba(5, 150, 105, 0.3);
    }
    .wishlist-btn {
      background: #f0fdf4;
      border: 2px solid #d1fae5;
      border-radius: 30px;
      padding: 0 16px;
      cursor: pointer;
      transition: all 0.3s ease;
      color: #059669;
    }
    .wishlist-btn:hover {
      background: #d1fae5;
      border-color: #059669;
    }

    /* deal */
    .deal-card {
      background: var(--gradient-hero);
      color: white;
      border-radius: 36px;
      padding: 44px;
      display: flex;
      align-items: center;
      gap: 40px;
      margin: 48px 0;
      flex-wrap: wrap;
      position: relative;
      overflow: hidden;
      box-shadow: 0 25px 50px rgba(6, 78, 59, 0.2);
    }
    .deal-card::after {
      content: '';
      position: absolute;
      top: -30%;
      right: -10%;
      width: 300px;
      height: 300px;
      background: rgba(255, 255, 255, 0.05);
      border-radius: 50%;
    }
    .deal-image {
      position: relative;
      z-index: 1;
      width: 280px;
      height: 280px;
      border-radius: 24px;
      overflow: hidden;
      box-shadow: 0 20px 40px rgba(0, 0, 0, 0.2);
    }
    .deal-image img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
    .deal-content {
      flex: 1;
      position: relative;
      z-index: 1;
    }
    .timer-box {
      display: flex;
      gap: 16px;
      margin: 20px 0;
    }
    .time {
      background: rgba(255, 255, 255, 0.15);
      backdrop-filter: blur(10px);
      padding: 16px 20px;
      border-radius: 18px;
      text-align: center;
      min-width: 80px;
      border: 1px solid rgba(255, 255, 255, 0.2);
    }
    .time span {
      font-size: 2rem;
      font-weight: 700;
      display: block;
    }
    .time small {
      font-size: 0.8rem;
      opacity: 0.8;
    }

    /* testimonials */
    .testimonial-scroll {
      display: flex;
      gap: 24px;
      overflow-x: auto;
      padding: 20px 4px;
      scroll-snap-type: x mandatory;
    }
    .testimonial {
      min-width: 340px;
      background: white;
      padding: 28px;
      border-radius: 24px;
      box-shadow: var(--shadow-card);
      scroll-snap-align: start;
      border: 1px solid #e5e7eb;
      transition: all 0.3s ease;
    }
    .testimonial:hover {
      border-color: #a7f3d0;
      box-shadow: var(--shadow-hover);
    }
    .testimonial .stars {
      margin-bottom: 12px;
    }

    .newsletter {
      background: linear-gradient(135deg, #064e3b, #059669);
      border-radius: 36px;
      padding: 48px;
      text-align: center;
      margin: 56px 0;
      color: white;
      box-shadow: 0 25px 50px rgba(6, 78, 59, 0.2);
    }
    .newsletter input {
      padding: 16px 24px;
      border-radius: 40px;
      border: 2px solid rgba(255, 255, 255, 0.3);
      background: rgba(255, 255, 255, 0.1);
      color: white;
      width: 320px;
      max-width: 100%;
      font-size: 1rem;
      outline: none;
      transition: all 0.3s ease;
    }
    .newsletter input::placeholder {
      color: rgba(255, 255, 255, 0.7);
    }
    .newsletter input:focus {
      border-color: white;
      background: rgba(255, 255, 255, 0.15);
    }

    footer {
      border-top: 2px solid #d1fae5;
      padding: 36px 0;
      color: #6b7280;
      margin-top: 20px;
    }

    @media (max-width: 850px) {
      .nav-links {
        display: none;
      }
      .mobile-menu-toggle {
        display: block;
      }
      .hero {
        flex-direction: column;
        text-align: center;
        padding: 40px 28px;
      }
      .hero-text h1 {
        font-size: 2.4rem;
      }
      .search-wrap input {
        width: 140px;
      }
      .deal-card {
        flex-direction: column;
        text-align: center;
      }
      .deal-image {
        width: 100%;
        height: 200px;
      }
    }
  </style>
</head>
<body>
  <header class="header">
    <div class="container">
      <div class="logo">
        <i class="fas fa-leaf"></i>
        Nexus<span>Shop</span>
      </div>
      <ul class="nav-links">
        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
      </ul>
      <div class="header-actions">
        <div class="search-wrap">
          <i class="fas fa-search"></i>
          <input type="search" placeholder="Search products..." id="searchInput" />
        </div>
        <button class="icon-btn" title="Wishlist"><i class="far fa-heart"></i></button>
        <button class="icon-btn" id="cartBtn" title="Cart">
          <i class="fas fa-shopping-cart"></i>
          <span class="cart-badge" id="cartCount">0</span>
        </button>
        <button class="mobile-menu-toggle" id="mobileToggle"><i class="fas fa-bars"></i></button>
      </div>
    </div>
  </header>

  <main class="container">
    <!-- Hero -->
    <section class="hero">
      <div class="hero-text">
        <h1>Discover Pure<br>Elegance</h1>
        <p>Sustainable style meets modern design. Curated collections for the conscious shopper.</p>
        <div class="btn-group">
          <button class="btn btn-primary" id="shopNowBtn"><i class="fas fa-bolt"></i> Explore Now</button>
          <button class="btn btn-outline" id="exploreDealsBtn"><i class="fas fa-percent"></i> View Deals</button>
        </div>
      </div>
      <div class="hero-image">
        <i class="fas fa-shopping-bag"></i>
      </div>
    </section>

    <!-- Categories -->
    <div class="section-header">
      <h2 class="section-title">Browse Categories</h2>
      <p class="section-sub">Find exactly what you're looking for</p>
    </div>
    <div class="category-grid" id="categoryGrid"></div>

    <!-- Products -->
    <div class="section-header">
      <h2 class="section-title">Trending Now</h2>
      <p class="section-sub">Most popular this week</p>
    </div>
    <div class="product-grid" id="productGrid"></div>

    <!-- Deal countdown -->
    <div id="deals" class="deal-card">
      <div class="deal-image">
        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80" alt="MacBook Air M2" />
      </div>
      <div class="deal-content">
        <span style="background:#f59e0b;color:#064e3b;padding:6px 14px;border-radius:20px;font-weight:700;font-size:0.9rem;">⚡ FLASH SALE</span>
        <h3 style="font-size:2rem;margin-top:12px;">MacBook Air M2</h3>
        <p style="opacity:0.9;font-size:1.1rem;">Powerful. Elegant. Limited stock available.</p>
        <div class="timer-box">
          <div class="time"><span id="dealDays">0</span><small>Days</small></div>
          <div class="time"><span id="dealHours">00</span><small>Hours</small></div>
          <div class="time"><span id="dealMinutes">00</span><small>Mins</small></div>
          <div class="time"><span id="dealSeconds">00</span><small>Secs</small></div>
        </div>
        <div style="font-size:2rem; font-weight:700;margin:16px 0;">$999 <span style="text-decoration:line-through;font-size:1.2rem;opacity:0.7;margin-left:8px;">$1,199</span></div>
        <button class="btn btn-primary" style="background:#f59e0b;color:#064e3b;" id="buyDealBtn"><i class="fas fa-cart-plus"></i> Grab This Deal</button>
      </div>
    </div>

    <!-- Testimonials -->
    <div class="section-header">
      <h2 class="section-title">Happy Customers</h2>
      <p class="section-sub">Real reviews from real people</p>
    </div>
    <div class="testimonial-scroll" id="testimonialContainer"></div>

    <!-- Newsletter -->
    <div class="newsletter">
      <i class="fas fa-paper-plane" style="font-size:3rem;margin-bottom:16px;opacity:0.9;"></i>
      <h3 style="font-size:2rem;font-weight:700;">Stay in the Loop</h3>
      <p style="margin:12px 0 24px;font-size:1.1rem;opacity:0.9;">Get exclusive offers and new arrivals straight to your inbox</p>
      <div style="display:flex; gap:12px; justify-content:center; flex-wrap:wrap;">
        <input type="email" id="newsEmail" placeholder="Enter your email" />
        <button class="btn btn-primary" id="subscribeBtn">Subscribe Now</button>
      </div>
      <div id="newsMsg" style="margin-top:16px; font-weight:600;font-size:1rem;"></div>
    </div>
  </main>

  <footer>
    <div class="container" style="display:flex; justify-content:space-between; flex-wrap:wrap; gap:24px;align-items:center;">
      <div>
        <div style="font-weight:700;font-size:1.2rem;color:#064e3b;margin-bottom:4px;"><i class="fas fa-leaf"></i> NexusShop</div>
        <span style="font-size:0.9rem;">© <span id="year"></span> All rights reserved.</span>
      </div>
      <div style="display:flex;gap:24px;">
        <a href="#" style="color:#6b7280;text-decoration:none;">Privacy</a>
        <a href="#" style="color:#6b7280;text-decoration:none;">Terms</a>
        <a href="#" style="color:#6b7280;text-decoration:none;">Contact</a>
      </div>
    </div>
  </footer>

  <script>
    (function() {
      // --- Data ---
      const CATEGORIES = [
        { id: 'phones', name: 'Phones', icon: 'fa-mobile-alt' },
        { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
        { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
        { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
        { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
        { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
      ];

      const PRODUCTS = [
        { 
          id:1, 
          title:'iPhone 14 Pro', 
          price:1099, 
          oldPrice:1199, 
          rating:5, 
          reviews:128, 
          category:'phones', 
          badge:'-8%',
          img:'https://images.unsplash.com/photo-1678652197831-2d180705cd2c?auto=format&fit=crop&w=600&q=80' 
        },
        { 
          id:2, 
          title:'MacBook Pro 14"', 
          price:1999, 
          rating:4.5, 
          reviews:86, 
          category:'laptops', 
          badge:'NEW',
          img:'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80' 
        },
        { 
          id:3, 
          title:'Apple Watch S8', 
          price:349, 
          oldPrice:399, 
          rating:5, 
          reviews:214, 
          category:'accessories', 
          badge:'-13%',
          img:'https://images.unsplash.com/photo-1434493789847-2f02dc6ca35d?auto=format&fit=crop&w=600&q=80' 
        },
        { 
          id:4, 
          title:'Nike Air Max', 
          price:150, 
          rating:4, 
          reviews:53, 
          category:'footwear',
          img:'https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=600&q=80' 
        },
        { 
          id:5, 
          title:'Sony A7 IV', 
          price:2499, 
          rating:5, 
          reviews:42, 
          category:'gadgets',
          img:'https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=600&q=80' 
        },
        { 
          id:6, 
          title:'Chanel N°5', 
          price:120, 
          rating:4.5, 
          reviews:189, 
          category:'accessories',
          img:'https://images.unsplash.com/photo-1541643600914-78b084683601?auto=format&fit=crop&w=600&q=80' 
        },
        { 
          id:7, 
          title:'Travel Backpack', 
          price:79, 
          oldPrice:99, 
          rating:4, 
          reviews:67, 
          category:'accessories', 
          badge:'-20%',
          img:'https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=600&q=80' 
        },
        { 
          id:8, 
          title:'Sony WH-1000XM5', 
          price:399, 
          rating:5, 
          reviews:156, 
          category:'gadgets',
          img:'https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80' 
        }
      ];

      // State
      let cartCount = 0;
      const cartCountEl = document.getElementById('cartCount');
      const searchInput = document.getElementById('searchInput');

      function updateCartBadge() {
        cartCountEl.textContent = cartCount;
        cartCountEl.style.animation = 'none';
        cartCountEl.offsetHeight; // trigger reflow
        cartCountEl.style.animation = 'pulse 0.3s ease';
        setTimeout(() => { cartCountEl.style.animation = 'pulse 2s infinite'; }, 300);
      }

      // Helper: generate star HTML
      function getStarHTML(rating) {
        const fullStars = Math.floor(rating);
        const halfStar = rating % 1 >= 0.5;
        let html = '';
        for (let i = 0; i < fullStars; i++) {
          html += '<i class="fas fa-star"></i>';
        }
        if (halfStar) {
          html += '<i class="fas fa-star-half-alt"></i>';
        }
        const emptyStars = 5 - fullStars - (halfStar ? 1 : 0);
        for (let i = 0; i < emptyStars; i++) {
          html += '<i class="far fa-star"></i>';
        }
        return html;
      }

      // Render categories
      const categoryGrid = document.getElementById('categoryGrid');
      function renderCategories() {
        categoryGrid.innerHTML = CATEGORIES.map(cat => `
          <div class="category-card" data-cat="${cat.name}">
            <i class="fas ${cat.icon}"></i>
            <h4>${cat.name}</h4>
          </div>
        `).join('');
        document.querySelectorAll('.category-card').forEach(card => {
          card.addEventListener('click', () => {
            const catName = card.dataset.cat;
            searchInput.value = catName;
            filterAndRender(catName);
            window.scrollTo({ top: document.getElementById('productGrid').offsetTop - 120, behavior: 'smooth' });
          });
        });
      }

      // Render products
      const productGrid = document.getElementById('productGrid');
      function renderProducts(products) {
        productGrid.innerHTML = products.map(p => `
          <div class="product-card">
            <div class="product-img">
              <img src="${p.img}" alt="${escapeHtml(p.title)}" onerror="this.style.display='none'; this.parentElement.innerHTML='<i class=\"fas fa-box\" style=\"font-size:4rem;color:#059669;\"></i>'" />
              ${p.badge ? `<span class="product-badge">${p.badge}</span>` : ''}
            </div>
            <div class="product-info">
              <h5>${escapeHtml(p.title)}</h5>
              <span class="category-tag">${p.category}</span>
              <div class="price-row">
                <div class="price-container">
                  <span class="price">$${p.price.toLocaleString()}</span>
                  ${p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : ''}
                </div>
                <div class="rating">
                  <span class="stars">${getStarHTML(p.rating)}</span>
                  <span class="rating-count">(${p.reviews})</span>
                </div>
              </div>
            </div>
            <div class="product-actions">
              <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add to Cart</button>
              <button class="wishlist-btn" title="Add to wishlist"><i class="far fa-heart"></i></button>
            </div>
          </div>
        `).join('');

        document.querySelectorAll('.add-btn').forEach(btn => {
          btn.addEventListener('click', (e) => {
            cartCount++;
            updateCartBadge();
            const originalHTML = btn.innerHTML;
            btn.innerHTML = '<i class="fas fa-check"></i> Added!';
            btn.style.background = '#064e3b';
            btn.disabled = true;
            setTimeout(() => {
              btn.innerHTML = originalHTML;
              btn.style.background = '#059669';
              btn.disabled = false;
            }, 1500);
          });
        });
      }

      function filterAndRender(query = '') {
        const q = query.trim().toLowerCase();
        if (!q) return renderProducts(PRODUCTS);
        const filtered = PRODUCTS.filter(p => 
          p.title.toLowerCase().includes(q) || 
          p.category.toLowerCase().includes(q)
        );
        renderProducts(filtered.length ? filtered : PRODUCTS);
      }

      function escapeHtml(text) {
        return String(text).replace(/[&<>"']/g, m => ({
          '&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'
        })[m]);
      }

      // Search
      searchInput.addEventListener('input', (e) => filterAndRender(e.target.value));
      document.querySelector('.search-wrap .fa-search').addEventListener('click', () => filterAndRender(searchInput.value));

      // Buttons
      document.getElementById('shopNowBtn').addEventListener('click', () => {
        window.scrollTo({ top: document.getElementById('productGrid').offsetTop - 100, behavior: 'smooth' });
      });
      document.getElementById('exploreDealsBtn').addEventListener('click', () => {
        document.getElementById('deals').scrollIntoView({ behavior: 'smooth' });
      });
      document.getElementById('buyDealBtn').addEventListener('click', () => {
        cartCount++;
        updateCartBadge();
        const btn = document.getElementById('buyDealBtn');
        const originalHTML = btn.innerHTML;
        btn.innerHTML = '<i class="fas fa-check"></i> Added to Cart!';
        btn.style.background = '#064e3b';
        btn.style.color = 'white';
        setTimeout(() => {
          btn.innerHTML = originalHTML;
          btn.style.background = '#f59e0b';
          btn.style.color = '#064e3b';
        }, 2000);
      });

      // Deal timer
      function startDealTimer() {
        const end = new Date();
        end.setDate(end.getDate() + 1);
        end.setHours(end.getHours() + 3);
        function tick() {
          const now = new Date();
          const diff = end - now;
          if (diff <= 0) {
            document.querySelectorAll('#dealDays, #dealHours, #dealMinutes, #dealSeconds').forEach(el => el.textContent = '00');
            return;
          }
          const d = Math.floor(diff / 86400000);
          const h = Math.floor((diff % 86400000) / 3600000);
          const m = Math.floor((diff % 3600000) / 60000);
          const s = Math.floor((diff % 60000) / 1000);
          document.getElementById('dealDays').textContent = d;
          document.getElementById('dealHours').textContent = String(h).padStart(2,'0');
          document.getElementById('dealMinutes').textContent = String(m).padStart(2,'0');
          document.getElementById('dealSeconds').textContent = String(s).padStart(2,'0');
        }
        tick();
        setInterval(tick, 1000);
      }

      // Testimonials
      const testimonialContainer = document.getElementById('testimonialContainer');
      const testimonials = [
        { text:'"Fast shipping and excellent customer support. The product quality exceeded my expectations!"', name:'Ava Martin', role:'Verified Buyer', rating:5 },
        { text:'"Smooth checkout experience and beautiful packaging. Will definitely shop again!"', name:'Michael Lee', role:'Frequent Shopper', rating:4.5 },
        { text:'"Love the sustainable approach and quality curation. My go-to store now."', name:'Sarah Chen', role:'Premium Member', rating:5 }
      ];
      testimonialContainer.innerHTML = testimonials.map(t => `
        <div class="testimonial">
          <div class="stars">${getStarHTML(t.rating)}</div>
          <p style="margin:14px 0;font-size:1rem;color:#374151;line-height:1.6;">${t.text}</p>
          <div style="display:flex;align-items:center;gap:12px;margin-top:12px;">
            <div style="width:44px;height:44px;border-radius:50%;background:linear-gradient(135deg,#059669,#10b981);display:flex;align-items:center;justify-content:center;color:white;font-weight:700;">${t.name.charAt(0)}</div>
            <div>
              <strong style="color:#064e3b;">${t.name}</strong>
              <div style="font-size:0.85rem;color:#6b7280;">${t.role}</div>
            </div>
          </div>
        </div>
      `).join('');

      // Newsletter
      document.getElementById('subscribeBtn').addEventListener('click', () => {
        const email = document.getElementById('newsEmail').value.trim();
        const msg = document.getElementById('newsMsg');
        if (!email || !email.includes('@')) {
          msg.textContent = '⚠️ Please enter a valid email address.';
          msg.style.color = '#fbbf24';
        } else {
          msg.textContent = '✅ Welcome aboard! Check your inbox.';
          msg.style.color = '#a7f3d0';
          document.getElementById('newsEmail').value = '';
          setTimeout(() => { msg.textContent = ''; }, 3000);
        }
      });

      // Mobile toggle
      document.getElementById('mobileToggle').addEventListener('click', () => {
        alert('📱 Mobile navigation menu (demo mode)');
      });

      // Footer year
      document.getElementById('year').textContent = new Date().getFullYear();

      // Init
      renderCategories();
      renderProducts(PRODUCTS);
      updateCartBadge();
      startDealTimer();
    })();
  </script>
</body>
</html>