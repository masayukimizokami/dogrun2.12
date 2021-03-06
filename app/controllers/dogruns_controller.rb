class DogrunsController < ApplicationController
  before_action :set_q

  # トップページ
  def index
    @dogruns = Dogrun.all
    @comments = Comment.all
  end

  #検索ページ
  def search
    @results = @q.result
  end

  # GET /dogruns/1 or /dogruns/1.json
  def show
    @dogrun = Dogrun.find(params[:id])
    @comment = Comment.new #新規コメント投稿
    @comments = Comment.all
  end

  # GET /dogruns/new
  def new
    @dogrun = Dogrun.new
  end

  # GET /dogruns/1/edit
  def edit
    @dogrun = Dogrun.find(params[:id])
  end

  # POST /dogruns or /dogruns.json
  def create
    @dogrun = Dogrun.new(dogrun_params)

    respond_to do |format|
      if @dogrun.save
        format.html { redirect_to dogrun_url(@dogrun), notice: "Dogrun was successfully created." }
        format.json { render :show, status: :created, location: @dogrun }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dogrun.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dogruns/1 or /dogruns/1.json
  def update
    @dogrun = Dogrun.find(params[:id])
    respond_to do |format|
      if @dogrun.update(dogrun_params)
        format.html { redirect_to dogrun_url(@dogrun), notice: "Dogrun was successfully updated." }
        format.json { render :show, status: :ok, location: @dogrun }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dogrun.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dogruns/1 or /dogruns/1.json
  def destroy
    @dogrun = Dogrun.find(params[:id])
    @dogrun.destroy

    respond_to do |format|
      format.html { redirect_to dogruns_url, notice: "Dogrun was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private


    # Only allow a list of trusted parameters through.
    def dogrun_params
      params.require(:dogrun).permit(:dogrun_name, :image, :address, :price, :pr)
    end

    def set_q
      @q = Dogrun.ransack(params[:q])
    end
end
