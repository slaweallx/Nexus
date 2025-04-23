<!-- BEGIN: MAIN -->
<!DOCTYPE html>
<html lang="{PHP.cfg.defaultlang}">
<head>
    <title>{MESSAGE_TITLE}</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="generator" content="Cotonti https://www.cotonti.com" />
    {MESSAGE_BASEHREF}
    {MESSAGE_STYLESHEET}
    {MESSAGE_REDIRECT}
    <!-- Modern fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <!-- Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
</head>

<body class="error-page">
    <div class="container">
        <div class="error-container">
            <div class="error-icon">
                <i class="fas fa-exclamation-triangle"></i>
            </div>
            <h1 class="error-title">{MESSAGE_TITLE}</h1>
            <div class="error-message">
                {MESSAGE_BODY}
            </div>
            <div class="error-actions">
                <a href="{PHP.cfg.mainurl}" class="button">
                    <i class="fas fa-home"></i> Ana Sayfaya Dön
                </a>
            </div>
        </div>
    </div>

    <style>
        :root {
            --primary-color: #3498db;
            --error-color: #e74c3c;
            --text-color: #333;
            --light-bg: #f8f8f8;
            --border-radius: 0.25rem;
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Poppins', -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
            font-size: 16px;
            line-height: 1.6;
            color: var(--text-color);
            background: var(--light-bg);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        
        .container {
            width: 90%;
            max-width: 600px;
            margin: 0 auto;
        }
        
        .error-container {
            background: white;
            border-radius: 8px;
            box-shadow: 0 10px 20px rgba(0,0,0,0.1);
            padding: 2.5rem;
            text-align: center;
        }
        
        .error-icon {
            font-size: 3rem;
            color: var(--error-color);
            margin-bottom: 1.5rem;
        }
        
        .error-title {
            font-size: 1.75rem;
            margin-bottom: 1.5rem;
            color: var(--error-color);
        }
        
        .error-message {
            margin-bottom: 2rem;
        }
        
        .error-actions {
            margin-top: 1.5rem;
        }
        
        .button {
            display: inline-block;
            padding: 0.75rem 1.5rem;
            color: white;
            background-color: var(--primary-color);
            border: none;
            border-radius: var(--border-radius);
            cursor: pointer;
            font-weight: 500;
            text-decoration: none;
            transition: all 0.3s ease;
        }
        
        .button:hover {
            background-color: #2980b9;
        }
        
        @media (max-width: 576px) {
            .error-container {
                padding: 1.5rem;
            }
            
            .error-icon {
                font-size: 2.5rem;
            }
            
            .error-title {
                font-size: 1.5rem;
            }
        }
    </style>
</body>
</html>
<!-- END: MAIN -->