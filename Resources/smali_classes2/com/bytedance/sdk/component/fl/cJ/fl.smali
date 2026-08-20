.class public Lcom/bytedance/sdk/component/fl/cJ/fl;
.super Ljava/lang/Object;
.source "HttpResponse.java"

# interfaces
.implements Lcom/bytedance/sdk/component/fl/ROR;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/component/fl/ROR;"
    }
.end annotation


# instance fields
.field private CJ:Ljava/lang/String;

.field Qhi:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ac:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private cJ:I

.field private fl:Lcom/bytedance/sdk/component/fl/Sf;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/bytedance/sdk/component/fl/cJ/fl;->cJ:I

    .line 35
    iput-object p2, p0, Lcom/bytedance/sdk/component/fl/cJ/fl;->ac:Ljava/lang/Object;

    .line 36
    iput-object p3, p0, Lcom/bytedance/sdk/component/fl/cJ/fl;->CJ:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/fl/cJ/fl;-><init>(ILjava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p4, p0, Lcom/bytedance/sdk/component/fl/cJ/fl;->Qhi:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public CJ()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/cJ/fl;->CJ:Ljava/lang/String;

    return-object v0
.end method

.method public Qhi()Lcom/bytedance/sdk/component/fl/Sf;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/cJ/fl;->fl:Lcom/bytedance/sdk/component/fl/Sf;

    return-object v0
.end method

.method public Qhi(Lcom/bytedance/sdk/component/fl/Sf;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/bytedance/sdk/component/fl/cJ/fl;->fl:Lcom/bytedance/sdk/component/fl/Sf;

    return-void
.end method

.method public ac()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/cJ/fl;->ac:Ljava/lang/Object;

    return-object v0
.end method

.method public cJ()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/bytedance/sdk/component/fl/cJ/fl;->cJ:I

    return v0
.end method

.method public fl()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/cJ/fl;->Qhi:Ljava/util/Map;

    return-object v0
.end method
