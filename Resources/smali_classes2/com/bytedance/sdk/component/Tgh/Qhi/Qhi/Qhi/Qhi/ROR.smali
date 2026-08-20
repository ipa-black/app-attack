.class public Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/ROR;
.super Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Sf;
.source "StatsBatchLogEventRepoImpl.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Qhi/Sf;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;)V

    return-void
.end method

.method public static Qhi(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0 , encrypt INTEGER default 0)"

    .line 48
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public Qhi()B
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public ac()B
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public cJ()Ljava/lang/String;
    .locals 1

    .line 23
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->CJ()Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Tgh;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Tgh;->fl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
