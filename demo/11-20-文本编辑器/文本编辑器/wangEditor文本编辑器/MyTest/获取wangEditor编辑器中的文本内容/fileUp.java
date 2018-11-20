package com.mingxin.comment.controller;

/**
 * 
 * @Title: fileUp
 * @Description:wangEditor�ϴ�ͼƬ
 * @param
 * @return
 */
@RequestMapping("/fileUp")
@ResponseBody
public AjaxJson fileUp(HttpServletRequest request){
    AjaxJson j = new AjaxJson();
    MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
    try {
        multipartRequest.setCharacterEncoding("UTF-8");
        Map<String, MultipartFile> fileMap = multipartRequest.getFileMap();
        // �ļ����ݿⱣ���·��
        String path = null;
        // �ļ�������Ӳ�̵����·��
        String realPath = null;

        realPath = ResourceUtil.getConfigByName("webUploadpath") + "/";
        path = ResourceUtil.getConfigByName("http_url") + "/";
        File file = new File(realPath);
        if (!file.exists()) {
            file.mkdirs();// ������Ŀ¼
        }
        realPath += DateUtils.getDataString(DateUtils.yyyyMMdd) + "/";
        path += DateUtils.getDataString(DateUtils.yyyyMMdd) + "/";
        file = new File(realPath);
        if (!file.exists()) {
            file.mkdir();// �����ļ�ʱ����Ŀ¼
        }
        String fileName = "";
        // String swfName = "";
        for (Map.Entry<String, MultipartFile> entity : fileMap.entrySet()) {

            MultipartFile mf = entity.getValue();// ��ȡ�ϴ��ļ�����
            fileName = mf.getOriginalFilename();// ��ȡ�ļ���
            // swfName =
            // PinyinUtil.getPinYinHeadChar(oConvertUtils.replaceBlank(FileUtils.getFilePrefix(fileName)));//
            // ȡ�ļ�������ĸ��ΪSWF�ļ���
            String extend = FileUtils.getExtend(fileName);// ��ȡ�ļ���չ��
            String myfilename = "";
            String noextfilename = "";// ������չ��

            noextfilename = DateUtils.getDataString(DateUtils.yyyymmddhhmmss) + StringUtil.random(8);// �Զ����ļ�����
            myfilename = noextfilename + "." + extend;// �Զ����ļ�����

            String savePath = realPath + myfilename;// �ļ�����ȫ·��

            File savefile = new File(savePath);
            if (entity.getKey() != null) {
                // �����ļ����ݿ������·��
                String filePath = path + myfilename;
                j.setObj(filePath);
            }
            // �ļ�������ָ��Ӳ��Ŀ¼
            if ("txt".equals(extend)) {
                // ����utf-8�ַ����Ĺ̶��������ر���ԭ��
                // Unicode:FF FE UTF-8:EF BB
                byte[] allbytes = mf.getBytes();
                try {
                    String head1 = toHexString(allbytes[0]);
                    // System.out.println(head1);
                    String head2 = toHexString(allbytes[1]);
                    // System.out.println(head2);
                    if ("ef".equals(head1) && "bb".equals(head2)) {
                        // UTF-8
                        String contents = new String(mf.getBytes(), "UTF-8");
                        if (StringUtils.isNotBlank(contents)) {
                            OutputStream out = new FileOutputStream(savePath);
                            out.write(contents.getBytes());
                            out.close();
                        }
                    } else {

                        // GBK
                        String contents = new String(mf.getBytes(), "GBK");
                        OutputStream out = new FileOutputStream(savePath);
                        out.write(contents.getBytes());
                        out.close();
                    }
                } catch (Exception e) {
                    String contents = new String(mf.getBytes(), "UTF-8");
                    if (StringUtils.isNotBlank(contents)) {
                        OutputStream out = new FileOutputStream(savePath);
                        out.write(contents.getBytes());
                        out.close();
                    }
                }
            } else {
                FileCopyUtils.copy(mf.getBytes(), savefile);
            }
        }
    } catch (Exception e) {
        j.setSuccess(false);
        e.printStackTrace();
    }
    return j;
}

private String toHexString(int index) {
    String hexString = Integer.toHexString(index);
    // 1��byte���16���Ƶģ�ֻ��Ҫ2λ�Ϳ��Ա�ʾ�ˣ�ȡ������λ��ȥ��ǰ��ķ������
    hexString = hexString.substring(hexString.length() - 2);
    return hexString;
}
