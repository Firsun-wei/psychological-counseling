package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConfigInfo;
import com.util.PaymentUtil;

/**
 * 
 *@desc:�����û�����������
 *@author chunhui
 *@date:Nov 19, 20185:19:04 PM
 */
@WebServlet("/PaymentRequestServlet")
public class PaymentRequestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PaymentRequestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 *
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//ҵ������
		String messageType="Buy";
		//�̻����
		String p1_MerId=ConfigInfo.getValue("p1_MerId");
		//�������
		String orderId=request.getParameter("orderNum");
		//֧�����
		String payMoney=request.getParameter("money");
		//���ױ���
		String currency="CNY";
		//��Ʒ����
		String productId="";
		//��Ʒ����
		String productCat="";
		//��Ʒ����
		String productDesc="";
		//��Ʒ����֧���ӿ���Ϣ�ĵ�ַ
		String merchantCallbackURL=ConfigInfo.getValue("merchantCallbackURL");
		//�ͻ���ַ
		String addressFlag="";
		//��Ʒ��չ��Ϣ
		String sMctProperties="";
		//���б���
		String bank=request.getParameter("bank");
		//Ӧ�����
		String pr_NeedResponse="0";
		String keyValue=ConfigInfo.getValue("keyValue");
		String md5hmac=PaymentUtil.buildHmac(messageType, p1_MerId, orderId, payMoney, currency, productId, productCat, productDesc, merchantCallbackURL, addressFlag, sMctProperties, bank, pr_NeedResponse,keyValue);	
		request.setAttribute("messageType", messageType);
		request.setAttribute("p1_MerId", p1_MerId);
		request.setAttribute("orderid", orderId);
		request.setAttribute("amount", payMoney);
		request.setAttribute("currency", currency);
		request.setAttribute("productId", productId);
		request.setAttribute("productCat", productCat);
		request.setAttribute("productDesc", productDesc);
		request.setAttribute("merchantCallbackURL", merchantCallbackURL);
		request.setAttribute("addressFlag", addressFlag);
		request.setAttribute("sMctProperties", sMctProperties);
		request.setAttribute("pd_FrpId", bank);
		request.setAttribute("pr_NeedResponse", pr_NeedResponse);
		request.setAttribute("hmac", md5hmac);
		
		request.getRequestDispatcher("conn.jsp").forward(request, response);
	}

}
