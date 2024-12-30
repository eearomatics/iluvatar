/**
 * This module provides SMS forwarding functionality
 * 
 * PHONE_NUMBERS: a comma-delimited list of phone numbers to forward SMS to
 */

const PHONE_NUMBERS_KEY = 'PHONE_NUMBERS';

function isValidPhoneNumber(phoneNumber) {
  return /^\+1\d{10}$/.test(phoneNumber);
}

function getPhoneNumbers(context) {
  const phoneNumbers = context[PHONE_NUMBERS_KEY];

  if (typeof phoneNumbers !== 'string') {
    return [];
  }

  return phoneNumbers.split(",").map(n => n.trim()).filter(isValidPhoneNumber);
}

exports.handler = function (context, event, callback) {
  const twiml = new Twilio.twiml.MessagingResponse();

  for (const phoneNumber of getPhoneNumbers(context)) {
    twiml.message(`From: ${event.From}:\n\n${event.Body}`, {
      to: phoneNumber,
    });
  }

  callback(null, twiml);
};
