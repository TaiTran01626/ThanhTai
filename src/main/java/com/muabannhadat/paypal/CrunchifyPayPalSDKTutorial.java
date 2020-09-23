package com.muabannhadat.paypal;

import java.util.ArrayList;
import java.util.List;

import com.paypal.api.payments.Amount;
import com.paypal.api.payments.Authorization;
import com.paypal.api.payments.Details;
import com.paypal.api.payments.Payer;
import com.paypal.api.payments.Payment;
import com.paypal.api.payments.PaymentExecution;
import com.paypal.api.payments.RedirectUrls;
import com.paypal.api.payments.Transaction;
import com.paypal.base.rest.APIContext;
import com.paypal.base.rest.PayPalRESTException;

public class CrunchifyPayPalSDKTutorial {
	
	private static String crunchifyID = "ATiu0Y01DvjvRaZwTfhYsr7SWT7d4c_9QCb8iyl0GLok6tDlF4CDfPSY-kPAzvWMw7ABRokRaHFZiA5q";
	private static String crunchifySecret = "EMUBPDfJ_1G6wS1lJ7Pv-yvYhrAEzRCS3wJrk5MjlVZjIZzYTLK8TI6pv_4y-P5oNtbNZURHYaBhYRn2";
 
	private static String executionMode = "sandbox"; // sandbox or production
 
	public static void main(String args[]) {
		CrunchifyPayPalSDKTutorial crunchifyObj = new CrunchifyPayPalSDKTutorial();
 
		// How to capture PayPal Payment using Java SDK? doCapture() PayPal SDK call.
		crunchifyObj.crunchifyCapturePayPalAPI();
	}
 
	// This is simple API call which will capture a specified amount for any given
	// Payer or User
	public void crunchifyCapturePayPalAPI() {
 
		/*
		 * Flow would look like this: 
		 * 1. Create Payer object and set PaymentMethod 
		 * 2. Set RedirectUrls and set cancelURL and returnURL 
		 * 3. Set Details and Add PaymentDetails
		 * 4. Set Amount
		 * 5. Set Transaction
		 * 6. Add Payment Details and set Intent to "authorize"
		 * 7. Create APIContext by passing the clientID, secret and mode
		 * 8. Create Payment object and get paymentID
		 * 9. Set payerID to PaymentExecution object
		 * 10. Execute Payment and get Authorization
		 * 
		 */
 
		Payer crunchifyPayer = new Payer();
		crunchifyPayer.setPaymentMethod("paypal");
 
		// Redirect URLs
		RedirectUrls crunchifyRedirectUrls = new RedirectUrls();
		crunchifyRedirectUrls.setCancelUrl("http://localhost:3000/crunchifyCancel");
		crunchifyRedirectUrls.setReturnUrl("http://localhost:3000/crunchifyReturn");
 
		// Set Payment Details Object
		Details crunchifyDetails = new Details();
		crunchifyDetails.setShipping("2.22");
		crunchifyDetails.setSubtotal("3.33");
		crunchifyDetails.setTax("1.11");
 
		// Set Payment amount
		Amount crunchifyAmount = new Amount();
		crunchifyAmount.setCurrency("USD");
		crunchifyAmount.setTotal("6.66");
		crunchifyAmount.setDetails(crunchifyDetails);
 
		// Set Transaction information
		Transaction crunchifyTransaction = new Transaction();
		crunchifyTransaction.setAmount(crunchifyAmount);
		crunchifyTransaction.setDescription("Crunchify Tutorial: How to Invoke PayPal REST API using Java Client?");
		List<Transaction> crunchifyTransactions = new ArrayList<Transaction>();
		crunchifyTransactions.add(crunchifyTransaction);
 
		// Add Payment details
		Payment crunchifyPayment = new Payment();
		
		// Set Payment intent to authorize
		crunchifyPayment.setIntent("authorize");
		crunchifyPayment.setPayer(crunchifyPayer);
		crunchifyPayment.setTransactions(crunchifyTransactions);
		crunchifyPayment.setRedirectUrls(crunchifyRedirectUrls);
 
		// Pass the clientID, secret and mode. The easiest, and most widely used option.
		APIContext crunchifyapiContext = new APIContext(crunchifyID, crunchifySecret, executionMode);
 
		try {
 
			Payment myPayment = crunchifyPayment.create(crunchifyapiContext);
 
			System.out.println("createdPayment Obejct Details ==> " + myPayment.toString());
 
			// Identifier of the payment resource created 
			crunchifyPayment.setId(myPayment.getId());
 
			PaymentExecution crunchifyPaymentExecution = new PaymentExecution();
 
			// Set your PayerID. The ID of the Payer, passed in the `return_url` by PayPal.
			crunchifyPaymentExecution.setPayerId("3ee73967dd785");
 
			// This call will fail as user has to access Payment on UI. Programmatically
			// there is no way you can get Payer's consent.
			Payment createdAuthPayment = crunchifyPayment.execute(crunchifyapiContext, crunchifyPaymentExecution);
 
			// Transactional details including the amount and item details.
			Authorization crunchifyAuthorization = createdAuthPayment.getTransactions().get(0).getRelatedResources().get(0).getAuthorization();
 
			log("Here is your Authorization ID" + crunchifyAuthorization.getId());
 
		} catch (PayPalRESTException e) {
 
			// The "standard" error output stream. This stream is already open and ready to
			// accept output data.
			System.err.println(e.getDetails());
		}
	}
 
	private void log(String string) {
		System.out.println(string);
 
	}

}
