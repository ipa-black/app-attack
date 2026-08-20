.class public Lcom/bytedance/sdk/component/Qhi/kYc;
.super Ljava/lang/Object;
.source "JsBridge2.java"


# static fields
.field static Qhi:Lcom/bytedance/sdk/component/Qhi/bxS;


# instance fields
.field private final CJ:Lcom/bytedance/sdk/component/Qhi/Gm;

.field private volatile Tgh:Z

.field private final ac:Landroid/webkit/WebView;

.field private final cJ:Lcom/bytedance/sdk/component/Qhi/Qhi;

.field private final fl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/Qhi/pA;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/Qhi/Gm;)V
    .locals 3

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Qhi/kYc;->fl:Ljava/util/List;

    const/4 v1, 0x0

    .line 30
    iput-boolean v1, p0, Lcom/bytedance/sdk/component/Qhi/kYc;->Tgh:Z

    .line 204
    iput-object p1, p0, Lcom/bytedance/sdk/component/Qhi/kYc;->CJ:Lcom/bytedance/sdk/component/Qhi/Gm;

    .line 206
    iget-boolean v1, p1, Lcom/bytedance/sdk/component/Qhi/Gm;->Sf:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    sget-object v1, Lcom/bytedance/sdk/component/Qhi/kYc;->Qhi:Lcom/bytedance/sdk/component/Qhi/bxS;

    if-nez v1, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    throw v2

    .line 209
    :cond_1
    :goto_0
    iget-object v1, p1, Lcom/bytedance/sdk/component/Qhi/Gm;->Qhi:Landroid/webkit/WebView;

    if-eqz v1, :cond_3

    .line 210
    iget-object v1, p1, Lcom/bytedance/sdk/component/Qhi/Gm;->cJ:Lcom/bytedance/sdk/component/Qhi/Qhi;

    if-nez v1, :cond_2

    .line 211
    new-instance v1, Lcom/bytedance/sdk/component/Qhi/pM;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/Qhi/pM;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/component/Qhi/kYc;->cJ:Lcom/bytedance/sdk/component/Qhi/Qhi;

    goto :goto_1

    .line 213
    :cond_2
    iget-object v1, p1, Lcom/bytedance/sdk/component/Qhi/Gm;->cJ:Lcom/bytedance/sdk/component/Qhi/Qhi;

    iput-object v1, p0, Lcom/bytedance/sdk/component/Qhi/kYc;->cJ:Lcom/bytedance/sdk/component/Qhi/Qhi;

    goto :goto_1

    .line 216
    :cond_3
    iget-object v1, p1, Lcom/bytedance/sdk/component/Qhi/Gm;->cJ:Lcom/bytedance/sdk/component/Qhi/Qhi;

    iput-object v1, p0, Lcom/bytedance/sdk/component/Qhi/kYc;->cJ:Lcom/bytedance/sdk/component/Qhi/Qhi;

    .line 218
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/component/Qhi/kYc;->cJ:Lcom/bytedance/sdk/component/Qhi/Qhi;

    invoke-virtual {v1, p1, v2}, Lcom/bytedance/sdk/component/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/component/Qhi/Gm;Lcom/bytedance/sdk/component/Qhi/EBS;)V

    .line 219
    iget-object v1, p1, Lcom/bytedance/sdk/component/Qhi/Gm;->Qhi:Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/bytedance/sdk/component/Qhi/kYc;->ac:Landroid/webkit/WebView;

    .line 220
    iget-object v1, p1, Lcom/bytedance/sdk/component/Qhi/Gm;->WAv:Lcom/bytedance/sdk/component/Qhi/pA;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    iget-boolean p1, p1, Lcom/bytedance/sdk/component/Qhi/Gm;->ROR:Z

    invoke-static {p1}, Lcom/bytedance/sdk/component/Qhi/CQU;->Qhi(Z)V

    return-void
.end method

.method public static Qhi(Landroid/webkit/WebView;)Lcom/bytedance/sdk/component/Qhi/Gm;
    .locals 1

    .line 60
    new-instance v0, Lcom/bytedance/sdk/component/Qhi/Gm;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/Qhi/Gm;-><init>(Landroid/webkit/WebView;)V

    return-object v0
.end method

.method private cJ()V
    .locals 2

    .line 231
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/Qhi/kYc;->Tgh:Z

    if-eqz v0, :cond_0

    .line 232
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsBridge2 is already released!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/Qhi/WAv;->Qhi(Ljava/lang/RuntimeException;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public Qhi(Ljava/lang/String;Lcom/bytedance/sdk/component/Qhi/Tgh;)Lcom/bytedance/sdk/component/Qhi/kYc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/Qhi/Tgh<",
            "**>;)",
            "Lcom/bytedance/sdk/component/Qhi/kYc;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, p1, v0, p2}, Lcom/bytedance/sdk/component/Qhi/kYc;->Qhi(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/Qhi/Tgh;)Lcom/bytedance/sdk/component/Qhi/kYc;

    move-result-object p1

    return-object p1
.end method

.method public Qhi(Ljava/lang/String;Lcom/bytedance/sdk/component/Qhi/fl$cJ;)Lcom/bytedance/sdk/component/Qhi/kYc;
    .locals 1

    const/4 v0, 0x0

    .line 114
    invoke-virtual {p0, p1, v0, p2}, Lcom/bytedance/sdk/component/Qhi/kYc;->Qhi(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/Qhi/fl$cJ;)Lcom/bytedance/sdk/component/Qhi/kYc;

    move-result-object p1

    return-object p1
.end method

.method public Qhi(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/Qhi/Tgh;)Lcom/bytedance/sdk/component/Qhi/kYc;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/Qhi/Tgh<",
            "**>;)",
            "Lcom/bytedance/sdk/component/Qhi/kYc;"
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Qhi/kYc;->cJ()V

    .line 106
    iget-object p2, p0, Lcom/bytedance/sdk/component/Qhi/kYc;->cJ:Lcom/bytedance/sdk/component/Qhi/Qhi;

    iget-object p2, p2, Lcom/bytedance/sdk/component/Qhi/Qhi;->ROR:Lcom/bytedance/sdk/component/Qhi/Sf;

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/component/Qhi/Sf;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/component/Qhi/Tgh;)V

    return-object p0
.end method

.method public Qhi(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/Qhi/fl$cJ;)Lcom/bytedance/sdk/component/Qhi/kYc;
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Qhi/kYc;->cJ()V

    .line 130
    iget-object p2, p0, Lcom/bytedance/sdk/component/Qhi/kYc;->cJ:Lcom/bytedance/sdk/component/Qhi/Qhi;

    iget-object p2, p2, Lcom/bytedance/sdk/component/Qhi/Qhi;->ROR:Lcom/bytedance/sdk/component/Qhi/Sf;

    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/component/Qhi/Sf;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/component/Qhi/fl$cJ;)V

    return-object p0
.end method

.method public Qhi()V
    .locals 2

    .line 187
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/Qhi/kYc;->Tgh:Z

    if-eqz v0, :cond_0

    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Qhi/kYc;->cJ:Lcom/bytedance/sdk/component/Qhi/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Qhi/Qhi;->cJ()V

    const/4 v0, 0x1

    .line 191
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/Qhi/kYc;->Tgh:Z

    .line 192
    iget-object v0, p0, Lcom/bytedance/sdk/component/Qhi/kYc;->fl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method
