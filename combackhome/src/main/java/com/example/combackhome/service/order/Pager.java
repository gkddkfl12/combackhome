package com.example.combackhome.service.order;

public class Pager {
	public static final int PAGE_SCALE=10; //�������� �Խù���
	public static final int BLOCK_SCALE=10;//ȭ��� ��������
	
	private int curPage; //���� ������
	private int prevPage;//���� ������
	private int nextPage;//���� ������
	private int totPage;//��ü ������ ����
	private int totBlock; //��ü ��������� ����
	private int curBlock; //���� ���
	private int prevBlock; //���� ���
	private int nextBlock; //���� ���
	private int pageBegin; // #{start} ������ ���޵� ��
	private int pageEnd; // #{end} ������ ���޵� ��
	private int blockBegin; //����� ���������� ��ȣ
	private int blockEnd; //����� �������� ��ȣ
	
	//������
	// Pager(���ڵ尹��, �������������ȣ)
	public Pager(int count, int curPage) {
		curBlock = 1; //������ ��ȣ
		this.curPage = curPage; //���� ������ ��ȣ
		setTotPage(count); //��ü ������ ���� ���
		setPageRange(); // #{start}, #{end} �� ���
		setTotBlock(); // ��ü ��� ���� ���
		setBlockRange(); //����� ����,�� ��ȣ ���
	}
	public void setBlockRange() {
		//���ϴ� �������� ���° ��Ͽ� ���ϴ��� ���
		curBlock=(curPage-1)/BLOCK_SCALE + 1;
		//����� ����������,�������� ��ȣ ���
		blockBegin=(curBlock-1)*BLOCK_SCALE+1;
		blockEnd=blockBegin+BLOCK_SCALE-1;
		//������ ��� ��ȣ�� ������ �ʰ����� �ʵ��� ó��
		if(blockEnd > totPage) {
			blockEnd = totPage;
		}
		//[����][����]�� ������ �� �̵��� ������ ��ȣ
		prevPage=(curBlock==1) ? 1 : (curBlock-1)*BLOCK_SCALE;
		nextPage=curBlock>totBlock ? (curBlock*BLOCK_SCALE)
				: (curBlock*BLOCK_SCALE)+1;
		//������ �������� ������ �ʰ����� �ʵ��� ó��
		if(nextPage >= totPage) {
			nextPage=totPage;
		}
	}
	
	//����� ���� ���
	public void setTotBlock() {
		totBlock = (int)Math.ceil(totPage*1.0 / BLOCK_SCALE);
	}
	
// where rn between #{start} and #{end}�� �Էµ� ��		
	public void setPageRange() {
// ���۹�ȣ=(����������-1)x�������� �Խù��� + 1
// ����ȣ=���۹�ȣ + �������� �Խù��� - 1		
		pageBegin = (curPage-1) * PAGE_SCALE + 1;
		pageEnd = pageBegin + PAGE_SCALE - 1;
	}
	
	public int getCurPage() {
		return curPage;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
	public int getPrevPage() {
		return prevPage;
	}
	public void setPrevPage(int prevPage) {
		this.prevPage = prevPage;
	}
	public int getNextPage() {
		return nextPage;
	}
	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}
	public int getTotPage() {
		return totPage;
	}
	//��ü ������ ���� ���
	public void setTotPage(int count) {
// Math.ceil() �ø�		
		totPage = (int)Math.ceil(count*1.0 / PAGE_SCALE);
	}
	public int getTotBlock() {
		return totBlock;
	}
	public void setTotBlock(int totBlock) {
		this.totBlock = totBlock;
	}
	public int getCurBlock() {
		return curBlock;
	}
	public void setCurBlock(int curBlock) {
		this.curBlock = curBlock;
	}
	public int getPrevBlock() {
		return prevBlock;
	}
	public void setPrevBlock(int prevBlock) {
		this.prevBlock = prevBlock;
	}
	public int getNextBlock() {
		return nextBlock;
	}
	public void setNextBlock(int nextBlock) {
		this.nextBlock = nextBlock;
	}
	public int getPageBegin() {
		return pageBegin;
	}
	public void setPageBegin(int pageBegin) {
		this.pageBegin = pageBegin;
	}
	public int getPageEnd() {
		return pageEnd;
	}
	public void setPageEnd(int pageEnd) {
		this.pageEnd = pageEnd;
	}
	public int getBlockBegin() {
		return blockBegin;
	}
	public void setBlockBegin(int blockBegin) {
		this.blockBegin = blockBegin;
	}
	public int getBlockEnd() {
		return blockEnd;
	}
	public void setBlockEnd(int blockEnd) {
		this.blockEnd = blockEnd;
	}
	
	
}
