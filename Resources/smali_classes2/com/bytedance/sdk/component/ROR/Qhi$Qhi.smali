.class public final Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;
.super Ljava/lang/Object;
.source "NetClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/ROR/Qhi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Qhi"
.end annotation


# instance fields
.field CJ:Z

.field Qhi:I

.field private ROR:Landroid/os/Bundle;

.field private Tgh:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field ac:I

.field cJ:I

.field final fl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/cJ/Qhi/hm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;->CJ:Z

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;->fl:Ljava/util/List;

    const/16 v0, 0x2710

    .line 157
    iput v0, p0, Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;->Qhi:I

    .line 158
    iput v0, p0, Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;->cJ:I

    .line 159
    iput v0, p0, Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;->ac:I

    return-void
.end method

.method private static Qhi(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_4

    if-eqz p3, :cond_3

    .line 209
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    const-wide/32 v3, 0x7fffffff

    cmp-long p3, p1, v3

    if-gtz p3, :cond_2

    cmp-long p3, p1, v0

    if-nez p3, :cond_1

    if-gtz v2, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " too small."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    long-to-int p0, p1

    return p0

    .line 211
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " too large."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 208
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "unit == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 207
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " < 0"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;)Landroid/os/Bundle;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;->ROR:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;)Ljava/util/Set;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;->Tgh:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public Qhi(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;
    .locals 1

    .line 166
    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;->Qhi(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;->Qhi:I

    return-object p0
.end method

.method public Qhi(Z)Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;
    .locals 0

    .line 183
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;->CJ:Z

    return-object p0
.end method

.method public Qhi()Lcom/bytedance/sdk/component/ROR/Qhi;
    .locals 2

    .line 219
    new-instance v0, Lcom/bytedance/sdk/component/ROR/Qhi;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/component/ROR/Qhi;-><init>(Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;Lcom/bytedance/sdk/component/ROR/Qhi$1;)V

    return-object v0
.end method

.method public ac(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;
    .locals 1

    .line 178
    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;->Qhi(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;->ac:I

    return-object p0
.end method

.method public cJ(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;
    .locals 1

    .line 172
    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;->Qhi(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/component/ROR/Qhi$Qhi;->cJ:I

    return-object p0
.end method
