.class public final Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;
.super Ljava/lang/Object;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/cJ/Qhi/zc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Qhi"
.end annotation


# instance fields
.field public CJ:J

.field public final Qhi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/cJ/Qhi/hm;",
            ">;"
        }
    .end annotation
.end field

.field public ROR:Ljava/util/concurrent/TimeUnit;

.field public Tgh:J

.field public ac:Ljava/util/concurrent/TimeUnit;

.field public cJ:J

.field public fl:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->Qhi:Ljava/util/List;

    const-wide/16 v0, 0x2710

    .line 46
    iput-wide v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->cJ:J

    .line 47
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v2, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->ac:Ljava/util/concurrent/TimeUnit;

    .line 48
    iput-wide v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->CJ:J

    .line 49
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v2, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->fl:Ljava/util/concurrent/TimeUnit;

    .line 50
    iput-wide v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->Tgh:J

    .line 51
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->ROR:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/cJ/Qhi/zc;)V
    .locals 3

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->Qhi:Ljava/util/List;

    const-wide/16 v0, 0x2710

    .line 46
    iput-wide v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->cJ:J

    .line 47
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v2, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->ac:Ljava/util/concurrent/TimeUnit;

    .line 48
    iput-wide v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->CJ:J

    .line 49
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v2, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->fl:Ljava/util/concurrent/TimeUnit;

    .line 50
    iput-wide v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->Tgh:J

    .line 51
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->ROR:Ljava/util/concurrent/TimeUnit;

    .line 62
    iget-wide v0, p1, Lcom/bytedance/sdk/component/cJ/Qhi/zc;->cJ:J

    iput-wide v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->cJ:J

    .line 63
    iget-object v0, p1, Lcom/bytedance/sdk/component/cJ/Qhi/zc;->ac:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->ac:Ljava/util/concurrent/TimeUnit;

    .line 64
    iget-wide v0, p1, Lcom/bytedance/sdk/component/cJ/Qhi/zc;->CJ:J

    iput-wide v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->CJ:J

    .line 65
    iget-object v0, p1, Lcom/bytedance/sdk/component/cJ/Qhi/zc;->fl:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->fl:Ljava/util/concurrent/TimeUnit;

    .line 66
    iget-wide v0, p1, Lcom/bytedance/sdk/component/cJ/Qhi/zc;->Tgh:J

    iput-wide v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->Tgh:J

    .line 67
    iget-object p1, p1, Lcom/bytedance/sdk/component/cJ/Qhi/zc;->ROR:Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->ROR:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->Qhi:Ljava/util/List;

    const-wide/16 v0, 0x2710

    .line 46
    iput-wide v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->cJ:J

    .line 47
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->ac:Ljava/util/concurrent/TimeUnit;

    .line 48
    iput-wide v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->CJ:J

    .line 49
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->fl:Ljava/util/concurrent/TimeUnit;

    .line 50
    iput-wide v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->Tgh:J

    .line 51
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->ROR:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public Qhi(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;
    .locals 0

    .line 75
    iput-wide p1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->cJ:J

    .line 76
    iput-object p3, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->ac:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method public Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/hm;)Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->Qhi:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public Qhi()Lcom/bytedance/sdk/component/cJ/Qhi/zc;
    .locals 1

    .line 103
    invoke-static {p0}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;)Lcom/bytedance/sdk/component/cJ/Qhi/zc;

    move-result-object v0

    return-object v0
.end method

.method public ac(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;
    .locals 0

    .line 87
    iput-wide p1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->Tgh:J

    .line 88
    iput-object p3, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->ROR:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method public cJ(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;
    .locals 0

    .line 81
    iput-wide p1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->CJ:J

    .line 82
    iput-object p3, p0, Lcom/bytedance/sdk/component/cJ/Qhi/zc$Qhi;->fl:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method
