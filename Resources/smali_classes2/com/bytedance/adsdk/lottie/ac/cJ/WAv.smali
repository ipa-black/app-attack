.class public Lcom/bytedance/adsdk/lottie/ac/cJ/WAv;
.super Ljava/lang/Object;
.source "MergePaths.java"

# interfaces
.implements Lcom/bytedance/adsdk/lottie/ac/cJ/ac;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;
    }
.end annotation


# instance fields
.field private final Qhi:Ljava/lang/String;

.field private final ac:Z

.field private final cJ:Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;Z)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/WAv;->Qhi:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/WAv;->cJ:Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;

    .line 47
    iput-boolean p3, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/WAv;->ac:Z

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/adsdk/lottie/hm;Lcom/bytedance/adsdk/lottie/ROR;Lcom/bytedance/adsdk/lottie/ac/ac/Qhi;)Lcom/bytedance/adsdk/lottie/Qhi/Qhi/ac;
    .locals 0

    .line 63
    invoke-virtual {p1}, Lcom/bytedance/adsdk/lottie/hm;->Qhi()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 67
    :cond_0
    new-instance p1, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/ABk;

    invoke-direct {p1, p0}, Lcom/bytedance/adsdk/lottie/Qhi/Qhi/ABk;-><init>(Lcom/bytedance/adsdk/lottie/ac/cJ/WAv;)V

    return-object p1
.end method

.method public Qhi()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/WAv;->Qhi:Ljava/lang/String;

    return-object v0
.end method

.method public ac()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/WAv;->ac:Z

    return v0
.end method

.method public cJ()Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/WAv;->cJ:Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MergePaths{mode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/adsdk/lottie/ac/cJ/WAv;->cJ:Lcom/bytedance/adsdk/lottie/ac/cJ/WAv$Qhi;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
