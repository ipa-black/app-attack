.class public Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/fl;
.super Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Qhi;
.source "HighPriorityAdEventRepoImpl.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Qhi;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;)V

    return-void
.end method

.method public static ac(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0 , encrypt INTEGER default 0)"

    .line 53
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 60
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public CJ()B
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ac()B
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public cJ()Ljava/lang/String;
    .locals 1

    .line 27
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->CJ()Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Tgh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    invoke-interface {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Tgh;->Qhi()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
