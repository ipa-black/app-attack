.class public final Lcom/facebook/ads/redexgen/X/Tw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6E;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Tp;->A0h(Lcom/facebook/ads/redexgen/X/a7;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/a7;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Tp;

.field public final synthetic A02:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 55724
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "WE91vPqiHLcyJwrbQHRJcIvZwn5D9l"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "3LK2x46Pp3Ld9onr8DyN9Ggm"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "60IU9PqapOW3gkaytJRkZEg3"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "UqNMzTGRyBNLAx"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "QjYmXRpW4"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "DeQ01HErfJf7NLfnuVX6corDAbYDzPur"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "bhlqPTI7mETXQlgoFXHPJBBhjQPpzoup"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "oYTMQ3SHL"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Tw;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Tw;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Tp;Lcom/facebook/ads/redexgen/X/a7;Z)V
    .locals 0

    .line 55725
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Tw;->A01:Lcom/facebook/ads/redexgen/X/Tp;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Tw;->A00:Lcom/facebook/ads/redexgen/X/a7;

    iput-boolean p3, p0, Lcom/facebook/ads/redexgen/X/Tw;->A02:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Tw;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x3c

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x1b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Tw;->A03:[B

    return-void

    :array_0
    .array-data 1
        -0x10t
        0xbt
        0x13t
        0x16t
        0xft
        0xet
        -0x36t
        0x1et
        0x19t
        -0x36t
        0xet
        0x19t
        0x21t
        0x18t
        0x16t
        0x19t
        0xbt
        0xet
        -0x36t
        0xbt
        -0x36t
        0x17t
        0xft
        0xet
        0x13t
        0xbt
        -0x28t
    .end array-data
.end method


# virtual methods
.method public final AAT()V
    .locals 6

    .line 55726
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tw;->A01:Lcom/facebook/ads/redexgen/X/Tp;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Tp;->A0a:Lcom/facebook/ads/redexgen/X/a7;

    if-eqz v0, :cond_0

    .line 55727
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tw;->A01:Lcom/facebook/ads/redexgen/X/Tp;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Tp;->A0a:Lcom/facebook/ads/redexgen/X/a7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/a7;->A0J()V

    .line 55728
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Tw;->A01:Lcom/facebook/ads/redexgen/X/Tp;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Tp;->A0a:Lcom/facebook/ads/redexgen/X/a7;

    .line 55729
    :cond_0
    sget-object v5, Lcom/facebook/ads/internal/protocol/AdErrorType;->CACHE_FAILURE_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 55730
    .local v0, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    const/4 v2, 0x0

    const/16 v1, 0x1b

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Tw;->A00(III)Ljava/lang/String;

    move-result-object v4

    .line 55731
    .local v1, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tw;->A01:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0I(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    .line 55732
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xc;->A0E()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tw;->A01:Lcom/facebook/ads/redexgen/X/Tp;

    .line 55733
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A04(Lcom/facebook/ads/redexgen/X/Tp;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/LC;->A01(J)J

    move-result-wide v1

    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v0

    .line 55734
    invoke-interface {v3, v1, v2, v0, v4}, Lcom/facebook/ads/redexgen/X/0R;->A2b(JILjava/lang/String;)V

    .line 55735
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tw;->A01:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0N(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/To;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 55736
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Tw;->A01:Lcom/facebook/ads/redexgen/X/Tp;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Tw;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Tw;->A04:[Ljava/lang/String;

    const-string v1, "7cQ3648pyLFx7h83cxUuTBVDS0jRS450"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Tp;->A0N(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/To;

    move-result-object v1

    invoke-static {v5, v4}, Lcom/facebook/ads/redexgen/X/JA;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/JA;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Io;->AAv(Lcom/facebook/ads/redexgen/X/JA;)V

    .line 55737
    :cond_2
    return-void
.end method

.method public final AAb()V
    .locals 5

    .line 55738
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Tw;->A01:Lcom/facebook/ads/redexgen/X/Tp;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tw;->A00:Lcom/facebook/ads/redexgen/X/a7;

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Tp;->A0a:Lcom/facebook/ads/redexgen/X/a7;

    .line 55739
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Tw;->A02:Z

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Tp;->A0H(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/Er;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 55740
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tw;->A01:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0H(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/Er;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Tw;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Tw;->A04:[Ljava/lang/String;

    const-string v1, "vb7V14ygc"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "eJXYUqUMt"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Za;->A0H()V

    .line 55741
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tw;->A01:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0N(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/To;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 55742
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tw;->A01:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0J(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/Is;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Is;->A04:Lcom/facebook/ads/redexgen/X/Is;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Is;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tw;->A01:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0w(Lcom/facebook/ads/redexgen/X/Tp;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 55743
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tw;->A01:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0N(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/To;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/To;->ABg()V

    .line 55744
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Tw;->A02:Z

    if-eqz v0, :cond_3

    .line 55745
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tw;->A01:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0I(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A1K(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tw;->A01:Lcom/facebook/ads/redexgen/X/Tp;

    .line 55746
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0z()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tw;->A01:Lcom/facebook/ads/redexgen/X/Tp;

    .line 55747
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0z()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 55748
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Tw;->A01:Lcom/facebook/ads/redexgen/X/Tp;

    .line 55749
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/Tp;->A0I(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/Xc;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tw;->A01:Lcom/facebook/ads/redexgen/X/Tp;

    .line 55750
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0z()Lcom/facebook/ads/redexgen/X/Zs;

    move-result-object v2

    const/4 v1, 0x4

    new-instance v0, Lcom/facebook/ads/redexgen/X/Tx;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Tx;-><init>(Lcom/facebook/ads/redexgen/X/Tw;)V

    .line 55751
    invoke-static {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ON;->A01(Lcom/facebook/ads/redexgen/X/Xc;Lcom/facebook/ads/redexgen/X/Zs;ILcom/facebook/ads/redexgen/X/OK;)Lcom/facebook/ads/redexgen/X/OM;

    move-result-object v0

    .line 55752
    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0U(Lcom/facebook/ads/redexgen/X/Tp;Lcom/facebook/ads/redexgen/X/OM;)Lcom/facebook/ads/redexgen/X/OM;

    .line 55753
    :cond_3
    :goto_0
    return-void

    .line 55754
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tw;->A01:Lcom/facebook/ads/redexgen/X/Tp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Tp;->A0N(Lcom/facebook/ads/redexgen/X/Tp;)Lcom/facebook/ads/redexgen/X/To;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Io;->AA8()V

    goto :goto_0
.end method
