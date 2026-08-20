.class public Lcom/bytedance/sdk/component/fl/ac/fl;
.super Ljava/lang/Object;
.source "ImageResponse.java"

# interfaces
.implements Lcom/bytedance/sdk/component/fl/zc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/component/fl/zc;"
    }
.end annotation


# instance fields
.field private CJ:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private Gm:I

.field private Qhi:Ljava/lang/String;

.field private ROR:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Sf:Z

.field private Tgh:I

.field private WAv:Lcom/bytedance/sdk/component/fl/Sf;

.field private ac:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private cJ:Ljava/lang/String;

.field private fl:I

.field private hm:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public CJ()Ljava/util/Map;
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

    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/fl;->ROR:Ljava/util/Map;

    return-object v0
.end method

.method public Qhi(Lcom/bytedance/sdk/component/fl/ac/ac;Ljava/lang/Object;)Lcom/bytedance/sdk/component/fl/ac/fl;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/fl/ac/ac;",
            "TT;)",
            "Lcom/bytedance/sdk/component/fl/ac/fl;"
        }
    .end annotation

    .line 43
    iput-object p2, p0, Lcom/bytedance/sdk/component/fl/ac/fl;->ac:Ljava/lang/Object;

    .line 44
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->fl()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/component/fl/ac/fl;->Qhi:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->Qhi()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/component/fl/ac/fl;->cJ:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->cJ()I

    move-result p2

    iput p2, p0, Lcom/bytedance/sdk/component/fl/ac/fl;->fl:I

    .line 47
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->ac()I

    move-result p2

    iput p2, p0, Lcom/bytedance/sdk/component/fl/ac/fl;->Tgh:I

    .line 48
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->pA()Z

    move-result p2

    iput-boolean p2, p0, Lcom/bytedance/sdk/component/fl/ac/fl;->hm:Z

    .line 49
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->hpZ()Lcom/bytedance/sdk/component/fl/Sf;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/component/fl/ac/fl;->WAv:Lcom/bytedance/sdk/component/fl/Sf;

    .line 50
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/fl/ac/ac;->HzH()I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/fl/ac/fl;->Gm:I

    return-object p0
.end method

.method public Qhi(Lcom/bytedance/sdk/component/fl/ac/ac;Ljava/lang/Object;Ljava/util/Map;Z)Lcom/bytedance/sdk/component/fl/ac/fl;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/fl/ac/ac;",
            "TT;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/bytedance/sdk/component/fl/ac/fl;"
        }
    .end annotation

    .line 55
    iput-object p3, p0, Lcom/bytedance/sdk/component/fl/ac/fl;->ROR:Ljava/util/Map;

    .line 56
    iput-boolean p4, p0, Lcom/bytedance/sdk/component/fl/ac/fl;->Sf:Z

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/fl/ac/fl;->Qhi(Lcom/bytedance/sdk/component/fl/ac/ac;Ljava/lang/Object;)Lcom/bytedance/sdk/component/fl/ac/fl;

    move-result-object p1

    return-object p1
.end method

.method public Qhi()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/fl;->cJ:Ljava/lang/String;

    return-object v0
.end method

.method public Qhi(Ljava/lang/Object;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/fl;->ac:Ljava/lang/Object;

    iput-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/fl;->CJ:Ljava/lang/Object;

    .line 80
    iput-object p1, p0, Lcom/bytedance/sdk/component/fl/ac/fl;->ac:Ljava/lang/Object;

    return-void
.end method

.method public ROR()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/bytedance/sdk/component/fl/ac/fl;->Gm:I

    return v0
.end method

.method public Tgh()Z
    .locals 1

    .line 101
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/fl/ac/fl;->hm:Z

    return v0
.end method

.method public ac()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/fl;->CJ:Ljava/lang/Object;

    return-object v0
.end method

.method public cJ()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/bytedance/sdk/component/fl/ac/fl;->ac:Ljava/lang/Object;

    return-object v0
.end method

.method public fl()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/fl/ac/fl;->Sf:Z

    return v0
.end method
