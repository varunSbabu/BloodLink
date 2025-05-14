# Updating Frontend API URL

After deploying your backend to Render, you need to update your frontend to use the new backend API URL.

## Step 1: Get Your Backend URL

Once deployed on Render, your backend will have a URL like:
```
https://bloodlink-backend.onrender.com
```

## Step 2: Update Frontend Environment Variables in Vercel

1. Go to [Vercel Dashboard](https://vercel.com/dashboard)
2. Select your project (bloodlink-frontend)
3. Go to "Settings" > "Environment Variables"
4. Add or update the following variable:
   - Name: `VITE_API_URL`
   - Value: Your backend URL (e.g., `https://bloodlink-backend.onrender.com`)
5. Click "Save"

## Step 3: Redeploy Your Frontend

1. Go to "Deployments"
2. Click on the three dots next to your latest deployment
3. Select "Redeploy"

## Step 4: Verify the Connection

1. Open your frontend application (`https://blood-link-gamma.vercel.app/`)
2. Check if it's successfully connecting to the backend
3. Test functionality that requires backend communication (e.g., login, registration)

If you're still having issues, check the browser console for error messages and ensure your CORS settings on the backend include your frontend URL. 