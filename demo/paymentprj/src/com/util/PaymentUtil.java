package com.util;
/**
 * 
 *@desc:���ɼ����ַ�������֤����Դ
 *@author chunhui
 *@date:Nov 19, 20185:31:10 PM
 */
public class PaymentUtil {

	public PaymentUtil() {
		// TODO Auto-generated constructor stub
	}
	/**
	 *@desc:
	 * @param p0_Cmd ҵ������
	 * @param p1_MerId�̻����
	 * @param p2_Order�������
	 * @param p3_Amt֧�����
	 * @param p4_Cur���ױ���
	 * @param p5_Pid��Ʒ����
	 * @param p6_Pcat��Ʒ����
	 * @param p7_Pdesc��Ʒ����
	 * @param P8_Url�̻����ڽ���֧����Ϣ�ĵ�ַ
	 * @param P9_SAF�ͻ���ַ
	 * @param pa_MP�̻���չ��Ϣ
	 * @param pd_FrpId���б���
	 * @param pr_NeedResponseӦ�����
	 * @param keyValue�̻���Կ
	 * @return
	 */
	public static String buildHmac(String p0_Cmd,String p1_MerId,String p2_Order,String p3_Amt,String p4_Cur,String p5_Pid,String p6_Pcat,String p7_Pdesc,String P8_Url,String P9_SAF,String pa_MP,String pd_FrpId,String pr_NeedResponse,String keyValue) {
		StringBuffer sValue=new StringBuffer("https://www.yeepay.com/app-merchant-proxy/node");
		sValue.append(p0_Cmd);
		sValue.append(p1_MerId);
		sValue.append(p2_Order);
		sValue.append(p3_Amt);
		sValue.append(p4_Cur);
		sValue.append(p5_Pid);
		sValue.append(p6_Pcat);
		sValue.append(p7_Pdesc);
		sValue.append(P8_Url);
		sValue.append(P9_SAF);
		sValue.append(pa_MP);
		sValue.append(pd_FrpId);
		sValue.append(pr_NeedResponse);
		String sNewStrinrg =DigestUtil.hmacSign(sValue.toString(),keyValue);
		return sNewStrinrg;
	}
	/**
	 * 
	 *@desc:��֤�����Դ�Ƿ�Ϸ�
	 *@param hmac�̻��������ļ����ַ���
	 *@param p1_MerId�̻����
	 *@param r0_Cmdҵ������
	 *@param r1_Code֧�����
	 *@param r2_TrxId�ױ�֧��������ˮ��
	 *@param r3_Amt֧�����
	 *@param r4_Cur���ױ���
	 *@param r5_Pid��Ʒ����
	 *@param r6_Order������
	 *@param r7_Uid�ױ�֧����Աid
	 *@param r8_MP�̻���չ��Ϣ
	 *@param r9_BType���׽����������
	 *@param keyValue
	 *@return
	 *@return:boolean
	 *@trhows
	 */
	public static boolean verifyCallback(String hmac,String p1_MerId,String r0_Cmd,String r1_Code,String r2_TrxId,String r3_Amt,String r4_Cur,String r5_Pid,String r6_Order,String r7_Uid,String r8_MP,String r9_BType,String keyValue) {
		StringBuffer sValue=new StringBuffer();
		sValue.append(p1_MerId);
		sValue.append(r0_Cmd);
		sValue.append(r1_Code);
		sValue.append(r2_TrxId);
		sValue.append(r3_Amt);
		sValue.append(r4_Cur);
		sValue.append(r5_Pid);
		sValue.append(r6_Order);
		sValue.append(r7_Uid);
		sValue.append(r8_MP);
		sValue.append(r9_BType);
		String sNewString = DigestUtil.hmacSign(sValue.toString(), keyValue);
		if(hmac.equals(sNewString)) {	
			return true;
		}
		return false;
	}

}
