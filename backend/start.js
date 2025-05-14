// This is a wrapper script to start the main application
console.log('Starting BloodLink backend via start.js wrapper...');

try {
  // Require the main application entry point
  require('./index.js');
} catch (error) {
  console.error('Failed to start the application:');
  console.error(error);
  process.exit(1);
} 