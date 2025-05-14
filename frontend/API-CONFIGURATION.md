# API Configuration

This document explains how the frontend communicates with the backend API.

## Current Backend URL

The frontend is currently configured to connect to the following backend URL:

```
https://blood-link-q0wm.onrender.com/api
```

## How API URLs are Configured

The API base URL is configured in three ways (in order of precedence):

1. **Environment Variable**: `VITE_API_URL` (highest priority)
2. **Development Mode**: Uses `http://localhost:5000/api` when running in dev mode
3. **Production Default**: Uses the hardcoded URL in `src/services/api.js`

## Updating the Backend URL

If you need to change the backend URL, there are two methods:

### Method 1: Update Environment Variables in Vercel (Recommended)

1. Go to [Vercel Dashboard](https://vercel.com/dashboard)
2. Select your project (bloodlink-frontend)
3. Go to "Settings" > "Environment Variables"
4. Add or update:
   - Name: `VITE_API_URL`
   - Value: Your new backend URL (e.g., `https://your-new-backend.onrender.com/api`)
5. Save and redeploy

### Method 2: Update in Code

1. Edit `src/services/api.js`
2. Update the `productionBackendURL` variable
3. Commit, build, and redeploy

## Verifying the Connection

You can verify your backend connection in the browser console:

1. Open your deployed frontend
2. Open browser developer tools (F12 or right-click > Inspect)
3. Check the console for: `Using API base URL: https://blood-link-q0wm.onrender.com/api`
4. Any API requests should show up in the Network tab

If you're having connection issues, check:
- CORS settings on the backend
- Network errors in the console
- API endpoint paths 