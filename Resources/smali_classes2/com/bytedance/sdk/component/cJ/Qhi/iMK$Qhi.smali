.class public Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/cJ/Qhi/iMK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Qhi"
.end annotation


# instance fields
.field CJ:Ljava/lang/String;

.field Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/Qhi;

.field ROR:I

.field Sf:Ljava/lang/String;

.field Tgh:Lcom/bytedance/sdk/component/cJ/Qhi/pA;

.field ac:Lcom/bytedance/sdk/component/cJ/Qhi/Sf;

.field cJ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field fl:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->cJ:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/bytedance/sdk/component/cJ/Qhi/iMK;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->cJ()Lcom/bytedance/sdk/component/cJ/Qhi/Sf;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->ac:Lcom/bytedance/sdk/component/cJ/Qhi/Sf;

    .line 82
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->ac()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->CJ:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->CJ()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->cJ:Ljava/util/Map;

    .line 84
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->Qhi()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->fl:Ljava/lang/Object;

    .line 85
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->Sf()Lcom/bytedance/sdk/component/cJ/Qhi/pA;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->Tgh:Lcom/bytedance/sdk/component/cJ/Qhi/pA;

    .line 86
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->fl()Lcom/bytedance/sdk/component/cJ/Qhi/Qhi;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/Qhi;

    .line 87
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->ROR()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->ROR:I

    .line 88
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->Tgh()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->Sf:Ljava/lang/String;

    return-void
.end method

.method private Qhi(Ljava/lang/String;Lcom/bytedance/sdk/component/cJ/Qhi/pA;)Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->CJ:Ljava/lang/String;

    .line 124
    iput-object p2, p0, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->Tgh:Lcom/bytedance/sdk/component/cJ/Qhi/pA;

    return-object p0
.end method


# virtual methods
.method public Qhi()Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;
    .locals 2

    .line 119
    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/component/cJ/Qhi/pA;)Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;

    move-result-object v0

    return-object v0
.end method

.method public Qhi(I)Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;
    .locals 0

    .line 76
    iput p1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->ROR:I

    return-object p0
.end method

.method public Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/Qhi;)Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/Qhi;

    return-object p0
.end method

.method public Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/Sf;)Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->ac:Lcom/bytedance/sdk/component/cJ/Qhi/Sf;

    return-object p0
.end method

.method public Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/pA;)Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;
    .locals 1

    .line 130
    const-string v0, "POST"

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/component/cJ/Qhi/pA;)Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;

    move-result-object p1

    return-object p1
.end method

.method public Qhi(Ljava/lang/Object;)Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->fl:Ljava/lang/Object;

    return-object p0
.end method

.method public Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->Sf:Ljava/lang/String;

    return-object p0
.end method

.method public Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;
    .locals 0

    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->cJ(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;

    move-result-object p1

    return-object p1
.end method

.method public cJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;
    .locals 0

    .line 98
    invoke-static {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/Sf;->ac(Ljava/lang/String;)Lcom/bytedance/sdk/component/cJ/Qhi/Sf;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/Sf;)Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;

    move-result-object p1

    return-object p1
.end method

.method public cJ(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->cJ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->cJ:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;->cJ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public cJ()Lcom/bytedance/sdk/component/cJ/Qhi/iMK;
    .locals 1

    .line 134
    new-instance v0, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi$1;-><init>(Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;)V

    return-object v0
.end method
