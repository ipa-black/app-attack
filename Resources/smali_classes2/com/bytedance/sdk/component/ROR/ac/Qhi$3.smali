.class Lcom/bytedance/sdk/component/ROR/ac/Qhi$3;
.super Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;
.source "AppConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/ROR/ac/Qhi;->Qhi(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:I

.field final synthetic cJ:Lcom/bytedance/sdk/component/ROR/ac/Qhi;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/ROR/ac/Qhi;I)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/bytedance/sdk/component/ROR/ac/Qhi$3;->cJ:Lcom/bytedance/sdk/component/ROR/ac/Qhi;

    iput p2, p0, Lcom/bytedance/sdk/component/ROR/ac/Qhi$3;->Qhi:I

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Lcom/bytedance/sdk/component/ROR/cJ;)V
    .locals 1

    if-eqz p2, :cond_4

    .line 351
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->Tgh()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 357
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ROR/cJ;->CJ()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, p1

    :goto_0
    if-nez v0, :cond_1

    .line 361
    iget-object p1, p0, Lcom/bytedance/sdk/component/ROR/ac/Qhi$3;->cJ:Lcom/bytedance/sdk/component/ROR/ac/Qhi;

    iget p2, p0, Lcom/bytedance/sdk/component/ROR/ac/Qhi$3;->Qhi:I

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ROR/ac/Qhi;->Qhi(Lcom/bytedance/sdk/component/ROR/ac/Qhi;I)V

    return-void

    .line 366
    :cond_1
    :try_start_1
    const-string p2, "message"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 369
    :catch_1
    const-string p2, "success"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 370
    iget-object p1, p0, Lcom/bytedance/sdk/component/ROR/ac/Qhi$3;->cJ:Lcom/bytedance/sdk/component/ROR/ac/Qhi;

    iget p2, p0, Lcom/bytedance/sdk/component/ROR/ac/Qhi$3;->Qhi:I

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ROR/ac/Qhi;->Qhi(Lcom/bytedance/sdk/component/ROR/ac/Qhi;I)V

    return-void

    .line 374
    :cond_2
    :try_start_2
    iget-object p1, p0, Lcom/bytedance/sdk/component/ROR/ac/Qhi$3;->cJ:Lcom/bytedance/sdk/component/ROR/ac/Qhi;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/ROR/ac/Qhi;->Qhi(Lcom/bytedance/sdk/component/ROR/ac/Qhi;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 375
    iget-object p1, p0, Lcom/bytedance/sdk/component/ROR/ac/Qhi$3;->cJ:Lcom/bytedance/sdk/component/ROR/ac/Qhi;

    const/16 p2, 0x65

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ROR/ac/Qhi;->cJ(Lcom/bytedance/sdk/component/ROR/ac/Qhi;I)V

    return-void

    .line 377
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/component/ROR/ac/Qhi$3;->cJ:Lcom/bytedance/sdk/component/ROR/ac/Qhi;

    iget p2, p0, Lcom/bytedance/sdk/component/ROR/ac/Qhi$3;->Qhi:I

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ROR/ac/Qhi;->Qhi(Lcom/bytedance/sdk/component/ROR/ac/Qhi;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void

    .line 352
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/component/ROR/ac/Qhi$3;->cJ:Lcom/bytedance/sdk/component/ROR/ac/Qhi;

    iget p2, p0, Lcom/bytedance/sdk/component/ROR/ac/Qhi$3;->Qhi:I

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ROR/ac/Qhi;->Qhi(Lcom/bytedance/sdk/component/ROR/ac/Qhi;I)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Ljava/io/IOException;)V
    .locals 0

    .line 385
    iget-object p1, p0, Lcom/bytedance/sdk/component/ROR/ac/Qhi$3;->cJ:Lcom/bytedance/sdk/component/ROR/ac/Qhi;

    iget p2, p0, Lcom/bytedance/sdk/component/ROR/ac/Qhi$3;->Qhi:I

    add-int/lit8 p2, p2, 0x1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ROR/ac/Qhi;->Qhi(Lcom/bytedance/sdk/component/ROR/ac/Qhi;I)V

    return-void
.end method
