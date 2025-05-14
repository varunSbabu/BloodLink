# Deploying BloodLink Frontend to Vercel

This guide will help you deploy the BloodLink frontend to Vercel.

## Prerequisites

- A Vercel account (free at [vercel.com](https://vercel.com))
- Node.js installed locally

## Deployment Methods

### Method 1: Using the Deployment Script

1. Navigate to the frontend directory
2. Run the deployment script:
   ```
   deploy-to-vercel.bat
   ```
3. Follow the on-screen instructions

### Method 2: Manual Deployment

1. Install the Vercel CLI globally:
   ```
   npm install -g vercel
   ```

2. Navigate to the frontend directory:
   ```
   cd frontend
   ```

3. Log in to Vercel (if not already logged in):
   ```
   vercel login
   ```

4. Deploy the project:
   ```
   vercel
   ```

5. Follow the interactive prompts:
   - Set up and deploy: **yes**
   - Select scope: **choose your account/team**
   - Link to existing project: **no**
   - Project name: **accept default or enter a custom name**
   - Override settings: **no**

### Method 3: GitHub Integration

If you've pushed your project to GitHub:

1. Log in to your Vercel account
2. Click "New Project"
3. Import your GitHub repository
4. Configure the project:
   - Framework Preset: Vite
   - Root Directory: `frontend`
   - Build Command: `npm run build`
   - Output Directory: `dist`
5. Click "Deploy"

## Environment Variables

If your frontend needs environment variables, add them in the Vercel dashboard:

1. Go to your project settings
2. Click on "Environment Variables"
3. Add variables like:
   - `VITE_API_URL`: Your backend API URL

## Connecting to Backend

Make sure your frontend is configured to connect to your deployed backend API. Update the API URL in your code or use environment variables.

## Troubleshooting

- If you encounter build errors, check the Vercel logs
- Make sure your package.json has the correct build script: `"build": "vite build"`
- Ensure all dependencies are properly listed in package.json 