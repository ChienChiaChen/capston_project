class ProjectsController < ApplicationController
  def show
  	@project=Project.find(params[:id])
  end

  def edit
    a=Array.new(100)
    for i in 1..100
     a[i]=rand(56..78).to_s+"%"
    end
    @project=Project.find(params[:id])
    @your_hash1=[
            {id: 11, label: '需求'},
            {id: 12, label: '設計'},
            {id: 13, label: '編碼與單元測試'},
            {id: 14, label: '整合與測試'},
            {id: 15, label: '專案的特殊要求'},
            {id: 21, label: '開發流程'},
            {id: 22, label: '開發系統'},
            {id: 23, label: '管理流程'},
            {id: 24, label: '管理方法'},
            {id: 25, label: '工作環境'},
            {id: 31, label: '資源'},
            {id: 32, label: '合約'},
            {id: 33, label: '計畫介面'}]
    @your_hash_edges=[

           {id: '1', from: 11, to: 12,label: a[1]},#設計  管理流程
           {id: '2', from: 11, to: 13,label: a[2]},#合約 開發流程
           {id: '3', from: 11, to: 15,label: a[3]},#專案的特殊要求 設計 
           {id: '4', from: 11, to: 21,label: a[4]},#管理流程 資源
           {id: '5', from: 11, to: 22,label: a[5]},#開發流程 設計
           {id: '6', from: 11, to: 25,label: a[6]},#管理流程 資源
           {id: '7', from: 11, to: 32,label: a[7]},#需求 設計
           {id: '8', from: 11, to: 33,label: a[8]},#需求 需求

           {id: '9', from: 12, to: 11,label: a[9]},#編碼與單元測試  資源
           {id: '10', from: 12, to: 13,label: a[10]},#需求 工作環境
           {id: '11', from: 12, to: 14,label: a[11]},#需求 管理方法
           {id: '12', from: 12, to: 21,label: a[12]},#管理流程 開發流程
           {id: '13', from: 12, to: 22,label: a[13]},#管理方法 工作環境
           {id: '14', from: 12, to: 24,label: a[14]},#工作環境 管理流程
           {id: '15', from: 12, to: 25,label: a[15]},#合約 專案的特殊要求
           {id: '16', from: 12, to: 32,label: a[16]},#合約 資源
           {id: '17', from: 12, to: 33,label: a[17]},#開發流程 編碼與單元測試

           {id: '18', from: 13, to: 14,label: a[18]},#合約 資源
           {id: '19', from: 13, to: 15,label: a[19]},#開發流程 編碼與單元測試
           {id: '20', from: 13, to: 21,label: a[20]},#合約 資源
           {id: '21', from: 13, to: 22,label: a[21]},#開發流程 編碼與單元測試
           {id: '22', from: 13, to: 23,label: a[22]},#合約 資源
           {id: '23', from: 13, to: 24,label: a[23]},#開發流程 編碼與單元測試
           {id: '24', from: 13, to: 25,label: a[24]},#合約 資源
           {id: '25', from: 13, to: 31,label: a[25]},#開發流程 編碼與單元測試

           {id: '26', from: 14, to: 15,label: a[26]},#開發流程 編碼與單元測試
           {id: '27', from: 14, to: 22,label: a[27]},#合約 資源
           {id: '28', from: 14, to: 25,label: a[28]},#開發流程 編碼與單元測試

           {id: '29', from: 15, to: 11,label: a[29]},#開發流程 編碼與單元測試
           {id: '30', from: 15, to: 12,label: a[30]},#合約 資源
           {id: '31', from: 15, to: 13,label: a[31]},#開發流程 編碼與單元測試
           {id: '32', from: 15, to: 14,label: a[32]},
           {id: '33', from: 15, to: 21,label: a[33]},
           {id: '34', from: 15, to: 22,label: a[34]},

           {id: '35', from: 31, to: 11,label: a[35]},
           {id: '36', from: 31, to: 12,label: a[36]},
           {id: '37', from: 31, to: 15,label: a[37]},
           {id: '38', from: 31, to: 13,label: a[38]},
           {id: '39', from: 31, to: 22,label: a[39]},
           {id: '40', from: 31, to: 24,label: a[40]},
           {id: '41', from: 31, to: 32,label: a[41]},

           {id: '42', from: 32, to: 11,label: a[42]},
           {id: '43', from: 32, to: 12,label: a[43]},
           {id: '44', from: 32, to: 21,label: a[44]},
           {id: '45', from: 32, to: 31,label: a[45]},
           {id: '46', from: 32, to: 33,label: a[46]},

           # {id: '47', from: 31, to: 24,label: a[47]},
           # {id: '48', from: 31, to: 22,label: a[48]},
           # {id: '49', from: 31, to: 24,label: a[49]},


           # {id: '42', from: 31, to: ,label: a[42]}


           ]
    gon.aa=@your_hash_edges
    gon.tt=@your_hash1
  end

  
  def index
  	@projects=Project.all
  end

  def update
    
    project = Project.find params[:id]
    ee=Project.find params[:id]
    project.update_attributes(params.require(:project)
              .permit(:project_name, 
            :manager_name,
            :identify_date,
            :scope,
            :cost,
            :outsource,
            :time,
            :member,
            :experience,
            :product_type,
            :req_stability, 
            :req_clear,
            :project_type,
            :development_process,
            :collaboratingdevelopment,
            :user_involvement,
            :supplier_support,
            :manager_support))

       if(ee.scope!=project.scope||ee.cost!=project.cost||ee.outsource!=project.outsource||ee.time!=project.time||ee.member!=project.member||ee.experience!=project.experience||ee.product_type!=project.product_type||ee.req_stability!=project.req_stability||ee.req_clear!=project.req_clear||ee.project_type!=project.project_type||ee.development_process!=project.development_process||ee.collaboratingdevelopment!=project.collaboratingdevelopment||ee.user_involvement!=project.user_involvement||ee.supplier_support!=project.supplier_support||ee.manager_support!=project.manager_support)
          flash[:notice] = "更新成功!"
          redirect_to  edit_project_path 
        else
          flash[:error] = "請調整屬性"
          ee.save
          redirect_to  edit_project_path
      end
  end

  def new
  	@project= Project.new
  end

  def create
  	@project= Project.new params.require(:project)
  		.permit(:project_name, 
  			:manager_name,
  			:identify_date,
  			:scope,
  			:cost,
        :outsource,
  			:time,
  			:member,
        :experience,
        :product_type,
        :req_stability, 
        :req_clear ,
        :project_type ,
        :development_process ,
        :collaboratingdevelopment ,
        :user_involvement ,
        :supplier_support ,
        :manager_support
        )

  	if @project.project_type==0||@project.product_type==0||@project.req_stability==0||@project.req_clear==0||
              @project.development_process==0||@project.collaboratingdevelopment==0
              # ||@project.user_involvement==0||
              # @project.supplier_support==0||@project.manager_support==0||@project.outsource==0
              flash[:error] = "填寫資料太少" 
      render 'new'
  		
  	else
      @project.save
      redirect_to edit_project_path(@project) ,:notice => "建立成功"
      
  	end
  end
end
