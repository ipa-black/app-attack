.class public Lcom/bytedance/sdk/component/ROR/cJ;
.super Ljava/lang/Object;
.source "NetResponse.java"


# instance fields
.field final CJ:Ljava/lang/String;

.field final Qhi:I

.field ROR:Lcom/bytedance/sdk/component/cJ/Qhi/Gm;

.field private Sf:Ljava/io/File;

.field final Tgh:J

.field private WAv:[B

.field final ac:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final cJ:Ljava/lang/String;

.field final fl:J

.field private final hm:Z


# direct methods
.method public constructor <init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "JJ)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/bytedance/sdk/component/ROR/cJ;->Sf:Ljava/io/File;

    .line 56
    iput-object v0, p0, Lcom/bytedance/sdk/component/ROR/cJ;->WAv:[B

    .line 61
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/ROR/cJ;->hm:Z

    .line 62
    iput p2, p0, Lcom/bytedance/sdk/component/ROR/cJ;->Qhi:I

    .line 63
    iput-object p3, p0, Lcom/bytedance/sdk/component/ROR/cJ;->cJ:Ljava/lang/String;

    .line 64
    iput-object p4, p0, Lcom/bytedance/sdk/component/ROR/cJ;->ac:Ljava/util/Map;

    .line 65
    iput-object p5, p0, Lcom/bytedance/sdk/component/ROR/cJ;->CJ:Ljava/lang/String;

    .line 66
    iput-wide p6, p0, Lcom/bytedance/sdk/component/ROR/cJ;->fl:J

    .line 67
    iput-wide p8, p0, Lcom/bytedance/sdk/component/ROR/cJ;->Tgh:J

    return-void
.end method


# virtual methods
.method public CJ()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/component/ROR/cJ;->CJ:Ljava/lang/String;

    return-object v0
.end method

.method public Qhi()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/bytedance/sdk/component/ROR/cJ;->Qhi:I

    return v0
.end method

.method public Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/Gm;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/bytedance/sdk/component/ROR/cJ;->ROR:Lcom/bytedance/sdk/component/cJ/Qhi/Gm;

    return-void
.end method

.method public Qhi(Ljava/io/File;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/bytedance/sdk/component/ROR/cJ;->Sf:Ljava/io/File;

    return-void
.end method

.method public Qhi([B)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/bytedance/sdk/component/ROR/cJ;->WAv:[B

    return-void
.end method

.method public ROR()J
    .locals 4

    .line 107
    iget-wide v0, p0, Lcom/bytedance/sdk/component/ROR/cJ;->fl:J

    iget-wide v2, p0, Lcom/bytedance/sdk/component/ROR/cJ;->Tgh:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public Sf()Lcom/bytedance/sdk/component/cJ/Qhi/Gm;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/bytedance/sdk/component/ROR/cJ;->ROR:Lcom/bytedance/sdk/component/cJ/Qhi/Gm;

    return-object v0
.end method

.method public Tgh()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ROR/cJ;->hm:Z

    return v0
.end method

.method public ac()Ljava/util/Map;
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

    .line 79
    iget-object v0, p0, Lcom/bytedance/sdk/component/ROR/cJ;->ac:Ljava/util/Map;

    return-object v0
.end method

.method public cJ()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/bytedance/sdk/component/ROR/cJ;->cJ:Ljava/lang/String;

    return-object v0
.end method

.method public fl()Ljava/io/File;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/bytedance/sdk/component/ROR/cJ;->Sf:Ljava/io/File;

    return-object v0
.end method
