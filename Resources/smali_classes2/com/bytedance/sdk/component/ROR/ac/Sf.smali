.class public Lcom/bytedance/sdk/component/ROR/ac/Sf;
.super Ljava/lang/Object;
.source "TncHostInterceptor.java"

# interfaces
.implements Lcom/bytedance/sdk/component/cJ/Qhi/hm;


# instance fields
.field private Qhi:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/hm$Qhi;)Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    invoke-interface {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/hm$Qhi;->Qhi()Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

    move-result-object v0

    .line 19
    invoke-static {}, Lcom/bytedance/sdk/component/ROR/ac/hm;->Qhi()Lcom/bytedance/sdk/component/ROR/ac/hm;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/component/ROR/ac/Sf;->Qhi:I

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/ROR/ac/hm;->Qhi(I)Lcom/bytedance/sdk/component/ROR/ac/ROR;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ROR/ac/ROR;->cJ()Lcom/bytedance/sdk/component/ROR/ac/Qhi;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 20
    invoke-static {}, Lcom/bytedance/sdk/component/ROR/ac/hm;->Qhi()Lcom/bytedance/sdk/component/ROR/ac/hm;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/component/ROR/ac/Sf;->Qhi:I

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/ROR/ac/hm;->Qhi(I)Lcom/bytedance/sdk/component/ROR/ac/ROR;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ROR/ac/ROR;->cJ()Lcom/bytedance/sdk/component/ROR/ac/Qhi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ROR/ac/Qhi;->fl()V

    .line 22
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->cJ()Lcom/bytedance/sdk/component/cJ/Qhi/Sf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/cJ/Qhi/Sf;->toString()Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-static {}, Lcom/bytedance/sdk/component/ROR/ac/hm;->Qhi()Lcom/bytedance/sdk/component/ROR/ac/hm;

    move-result-object v2

    iget v3, p0, Lcom/bytedance/sdk/component/ROR/ac/Sf;->Qhi:I

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/ROR/ac/hm;->Qhi(I)Lcom/bytedance/sdk/component/ROR/ac/ROR;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/component/ROR/ac/ROR;->Qhi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 25
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->hm()Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->cJ()Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

    move-result-object v0

    :cond_1
    const/4 v1, 0x0

    .line 29
    :try_start_0
    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/cJ/Qhi/hm$Qhi;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/iMK;)Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 30
    :try_start_1
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;->ac()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 31
    invoke-static {}, Lcom/bytedance/sdk/component/ROR/ac/hm;->Qhi()Lcom/bytedance/sdk/component/ROR/ac/hm;

    move-result-object v3

    iget v4, p0, Lcom/bytedance/sdk/component/ROR/ac/Sf;->Qhi:I

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/component/ROR/ac/hm;->Qhi(I)Lcom/bytedance/sdk/component/ROR/ac/ROR;

    move-result-object v3

    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    invoke-virtual {v3, v0, v4}, Lcom/bytedance/sdk/component/ROR/ac/ROR;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/iMK;Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    .line 34
    :goto_0
    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/bytedance/sdk/component/ROR/ac/hm;->Qhi()Lcom/bytedance/sdk/component/ROR/ac/hm;

    move-result-object v4

    iget v5, p0, Lcom/bytedance/sdk/component/ROR/ac/Sf;->Qhi:I

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/component/ROR/ac/hm;->Qhi(I)Lcom/bytedance/sdk/component/ROR/ac/ROR;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/bytedance/sdk/component/ROR/ac/ROR;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/iMK;Ljava/lang/Exception;)V

    move-object v1, v3

    .line 37
    :cond_2
    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/component/ROR/ac/hm;->Qhi()Lcom/bytedance/sdk/component/ROR/ac/hm;

    move-result-object v3

    iget v4, p0, Lcom/bytedance/sdk/component/ROR/ac/Sf;->Qhi:I

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/component/ROR/ac/hm;->Qhi(I)Lcom/bytedance/sdk/component/ROR/ac/ROR;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/bytedance/sdk/component/ROR/ac/ROR;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/iMK;Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;)V

    if-nez v1, :cond_4

    if-nez v2, :cond_3

    .line 41
    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/cJ/Qhi/hm$Qhi;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/iMK;)Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v2

    .line 39
    :cond_4
    throw v1
.end method

.method public Qhi(I)V
    .locals 0

    .line 13
    iput p1, p0, Lcom/bytedance/sdk/component/ROR/ac/Sf;->Qhi:I

    return-void
.end method
