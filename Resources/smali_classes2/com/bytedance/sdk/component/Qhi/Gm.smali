.class public Lcom/bytedance/sdk/component/Qhi/Gm;
.super Ljava/lang/Object;
.source "Environment.java"


# instance fields
.field final ABk:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field CJ:Lcom/bytedance/sdk/component/Qhi/hm;

.field Gm:Ljava/lang/String;

.field Qhi:Landroid/webkit/WebView;

.field ROR:Z

.field Sf:Z

.field Tgh:Z

.field WAv:Lcom/bytedance/sdk/component/Qhi/pA;

.field ac:Ljava/lang/String;

.field cJ:Lcom/bytedance/sdk/component/Qhi/Qhi;

.field fl:Landroid/content/Context;

.field hm:Lcom/bytedance/sdk/component/Qhi/iMK;

.field hpZ:Lcom/bytedance/sdk/component/Qhi/zc$Qhi;

.field iMK:Z

.field pA:Z

.field final zc:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "IESJSBridge"

    iput-object v0, p0, Lcom/bytedance/sdk/component/Qhi/Gm;->ac:Ljava/lang/String;

    .line 28
    const-string v0, "host"

    iput-object v0, p0, Lcom/bytedance/sdk/component/Qhi/Gm;->Gm:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Qhi/Gm;->zc:Ljava/util/Set;

    .line 30
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Qhi/Gm;->ABk:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "IESJSBridge"

    iput-object v0, p0, Lcom/bytedance/sdk/component/Qhi/Gm;->ac:Ljava/lang/String;

    .line 28
    const-string v0, "host"

    iput-object v0, p0, Lcom/bytedance/sdk/component/Qhi/Gm;->Gm:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Qhi/Gm;->zc:Ljava/util/Set;

    .line 30
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Qhi/Gm;->ABk:Ljava/util/Set;

    .line 36
    iput-object p1, p0, Lcom/bytedance/sdk/component/Qhi/Gm;->Qhi:Landroid/webkit/WebView;

    return-void
.end method

.method private ac()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/bytedance/sdk/component/Qhi/Gm;->Qhi:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/Qhi/Gm;->iMK:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/Qhi/Gm;->cJ:Lcom/bytedance/sdk/component/Qhi/Qhi;

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Qhi/Gm;->ac:Ljava/lang/String;

    .line 217
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/Qhi/Gm;->Qhi:Landroid/webkit/WebView;

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Qhi/Gm;->CJ:Lcom/bytedance/sdk/component/Qhi/hm;

    if-eqz v0, :cond_2

    return-void

    .line 219
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requested arguments aren\'t set properly when building JsBridge."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public Qhi()Lcom/bytedance/sdk/component/Qhi/Gm;
    .locals 1

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/Qhi/Gm;->pA:Z

    return-object p0
.end method

.method public Qhi(Lcom/bytedance/sdk/component/Qhi/ABk;)Lcom/bytedance/sdk/component/Qhi/Gm;
    .locals 0

    .line 78
    invoke-static {p1}, Lcom/bytedance/sdk/component/Qhi/hm;->Qhi(Lcom/bytedance/sdk/component/Qhi/ABk;)Lcom/bytedance/sdk/component/Qhi/hm;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/Qhi/Gm;->CJ:Lcom/bytedance/sdk/component/Qhi/hm;

    return-object p0
.end method

.method public Qhi(Lcom/bytedance/sdk/component/Qhi/Qhi;)Lcom/bytedance/sdk/component/Qhi/Gm;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/bytedance/sdk/component/Qhi/Gm;->cJ:Lcom/bytedance/sdk/component/Qhi/Qhi;

    return-object p0
.end method

.method public Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/Qhi/Gm;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/bytedance/sdk/component/Qhi/Gm;->ac:Ljava/lang/String;

    return-object p0
.end method

.method public Qhi(Z)Lcom/bytedance/sdk/component/Qhi/Gm;
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/Qhi/Gm;->Tgh:Z

    return-object p0
.end method

.method public cJ(Z)Lcom/bytedance/sdk/component/Qhi/Gm;
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/Qhi/Gm;->ROR:Z

    return-object p0
.end method

.method public cJ()Lcom/bytedance/sdk/component/Qhi/kYc;
    .locals 1

    .line 151
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Qhi/Gm;->ac()V

    .line 152
    new-instance v0, Lcom/bytedance/sdk/component/Qhi/kYc;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/Qhi/kYc;-><init>(Lcom/bytedance/sdk/component/Qhi/Gm;)V

    return-object v0
.end method
