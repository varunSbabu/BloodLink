import api from '../services/api';

/**
 * Verifies connection to the backend by making a health check request
 * @returns {Promise<{success: boolean, message: string, url: string}>}
 */
export const verifyBackendConnection = async () => {
  try {
    console.log('Verifying backend connection...');
    const response = await api.get('/health');
    console.log('Backend health check response:', response.data);
    
    return {
      success: true,
      message: 'Successfully connected to backend',
      url: api.defaults.baseURL,
      data: response.data
    };
  } catch (error) {
    console.error('Backend connection failed:', error);
    
    return {
      success: false,
      message: error.message || 'Connection to backend failed',
      url: api.defaults.baseURL,
      error
    };
  }
};

export default verifyBackendConnection; 