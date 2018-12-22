--�������ݿ� 
create Database ZhangBFWebShop_JSP

--ʹ�����ݿ�
use ZhangBFWebShop_JSP

--======================================================================================================
--������Ʒ����  good_type (��Ʒ���ͱ�) (���ͱ��,��������)
--======================================================================================================
CREATE TABLE good_type (
  ID int identity(1,1)  PRIMARY KEY,
  TYPENAME varchar(50),
)

--����Ʒ���ͱ�������� 
INSERT INTO good_type VALUES ('�ֻ�');
INSERT INTO good_type VALUES ('����');
INSERT INTO good_type VALUES ('����');
INSERT INTO good_type VALUES ('��ʳ');
INSERT INTO good_type VALUES ('�鼮');

--������Ʒ���ͱ������
update good_type set TYPENAME = '����' where ID = 1;

delete good_type



--======================================================================================================
--����good( ��Ʒ��)(��Ʒ���,��Ʒ����,��Ʒ���ͱ��,��ƷͼƬ·��,��Ʒ�۸�,��Ʒ����,��Ʒ�ϼ�ʱ��)
--======================================================================================================
CREATE TABLE good (
  ID int PRIMARY KEY,
  name varchar(50),
  typeid int,
  imgpath varchar(50),
  price float,
  describe text,
  createTime datetime  
)

--����Ʒ���������
INSERT INTO good VALUES ('1', 'Apple iPhone 8 ', '1', 'images/59b848cdN41d277a2.jpg', '5888', 'Apple iPhone 8 (A1863) 64GB ��ɫ �ƶ���ͨ����4G�ֻ�', '2017-10-14 09:17:50');
INSERT INTO good VALUES ('2', '���� Galaxy S8', '1', 'images/59ccd187N8510453f.jpg', '5988', '���� Galaxy S8��SM-G9500��4GB+64GB ��ҹ�ڣ����ձȺ������ư棩�ƶ���ͨ����4G�ֻ� ˫��˫��', '2017-10-14 09:20:21');
INSERT INTO good VALUES ('3', '���루ThinkPad��', '2', 'images/584b56beN56eea1f6.jpg', '5299', '���루ThinkPad�� E470c��20H3A001CD��14Ӣ��ʼǱ����ԣ�i5-6200U 8G 256G SSD 2G���� Win10����ɫ', '2017-10-14 09:22:04');
INSERT INTO good VALUES ('4', 'Apple MacBook Pro', '2', 'images/5631d2b6N8fa76f15.jpg', '13388', '15.4Ӣ��ʼǱ����� ��ɫ(Core i7 ������/16GB�ڴ�/256GB SSD����/Retina�� MJLQ2CH/A)', '2017-10-14 09:26:08');
INSERT INTO good VALUES ('5', 'Beats X ��������', '3', 'images/58981d4aNffe39bcc.jpg', '1188', 'Beats X �������� ���ʽ���� �˶����� �ֻ����� ��Ϸ���� �����ͨ�� ��ɫ', '2017-10-14 09:28:55');
INSERT INTO good VALUES ('6', '���ܣ�Canon��', '3', 'images/58d49036N367570f7.jpg', '5499', '���ܣ�Canon��EOS 800D �����׻� ��EF-S 18-55mm f/4-5.6 IS STM ��ͷ��', '2017-10-14 09:30:59');
INSERT INTO good VALUES ('7', 'ɭ��������Sennheiser��', '3', 'images/595c5e84N0ad2bd74.jpg', '1499', 'ɭ��������Sennheiser��MOMENTUM In-Ear Wireless ��ͷ�������ʽ���� ��ɫ', '2017-10-14 09:36:46');
INSERT INTO good VALUES ('8', '���ϣ�SanDisk��', '3', 'images/58f47d97Nfa8606cf.jpg', '169', '���ϣ�SanDisk��USB-C���𳬼���SD UHS-II������', '2017-10-14 09:39:18');
INSERT INTO good VALUES ('9', '360��ȫ·��P2', '3', 'images/58ef1174Nf512c52f.jpg', '139', '360��ȫ·��P2 1200Mǧ��5G˫Ƶ��������������·���� wifi�źŷŴ� ���˿�����ʹ�ǽ·��', '2017-10-14 09:41:42');
INSERT INTO good VALUES ('10', '360 ���������', '3', 'images/571f36f6N1f0791f5.jpg', '249', '360 ��������� Сˮ��1080P�� ����wifi���ü�ظ�������ͷ ����ҹ�� ˫��ͨ�� Զ�̼�� �ư�', '2017-10-14 09:43:33');
INSERT INTO good VALUES ('12', '�῵��Nikon��J5 ΢�����', '3', 'images/5b14ae24N680a312e.jpg', '1499', '�῵��Nikon��J5 ΢����� ��˶� VR���� J5+1 10-30mm f/3.5-5.6 PD��ͷ ��ɫ���ɸ�����ͷ 4K��Ƶ¼�ƣ�', '2018-06-08 15:16:49');

--��ѯ���  
select id,name,typeid,imgpath,price,describe from good order by createTime desc

select id,name,typeid,imgpath,price,describe from good where typeid=1 order by createTime desc


--======================================================================================================
--���� Carousel( �ֲ���)(���,��Ʒ�ֲ�����,�ֲ�ͼƬ·��,�û�����ʱ��)
--======================================================================================================
CREATE TABLE Carousel (
  ID int PRIMARY KEY,
  title varchar(50),
  imgpath varchar(50),
  createTime varchar(50)  
)

--�������
INSERT INTO Carousel VALUES ('1', 'ʱ�����������ʹ�', 'images/1.jpg', '2018-06-02 10:06:30');
INSERT INTO Carousel VALUES ('2', '�߶˼ҵ�Ʒ������', 'images/2.jpg', '2018-06-02 10:07:01');
INSERT INTO Carousel VALUES ('3', 'ʱ�����������ʹ�', 'images/3.jpg', '2018-06-02 10:07:33');








--======================================================================================================
--���� good_comment( ��Ʒ���۱�)(��Ʒ���,���۶�Ӧ����Ʒ,��������,������,����ʱ��)
--======================================================================================================

CREATE TABLE good_comment (
  ID int PRIMARY KEY  NOT NULL REFERENCES good(id) on update cascade on delete cascade,
  Good_id varchar(50),
  content text,
  ip varchar(50),
  createtime datetime
)







--======================================================================================================
--���� userinfo( ����Ա�û���)(���,�û���,�û�����,�û�����ʱ��)
--======================================================================================================

CREATE TABLE userinfo (
  ID int PRIMARY KEY ,
  username varchar(50),
  password varchar(50),
  createtime datetime
)

--��ӹ���Ա��Ϣ
INSERT INTO userinfo VALUES ('1', 'root', 'root123', '2018-06-02 10:06:30');
INSERT INTO userinfo VALUES ('2', 'admin', 'admin', '2018-06-02 10:07:01');