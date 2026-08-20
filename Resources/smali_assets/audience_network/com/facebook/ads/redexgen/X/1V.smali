.class public final Lcom/facebook/ads/redexgen/X/1V;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/1U;
    }
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x4e149b77709aff0L


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Ljava/lang/String;

.field public final A02:Ljava/lang/String;

.field public final A03:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/1U;)V
    .locals 1

    .line 4136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4137
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1U;->A00(Lcom/facebook/ads/redexgen/X/1U;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1V;->A02:Ljava/lang/String;

    .line 4138
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1U;->A01(Lcom/facebook/ads/redexgen/X/1U;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1V;->A01:Ljava/lang/String;

    .line 4139
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1U;->A02(Lcom/facebook/ads/redexgen/X/1U;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1V;->A00:Ljava/lang/String;

    .line 4140
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1U;->A03(Lcom/facebook/ads/redexgen/X/1U;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/1V;->A03:Ljava/lang/String;

    .line 4141
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/1U;Lcom/facebook/ads/redexgen/X/1T;)V
    .locals 0

    .line 4142
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/1V;-><init>(Lcom/facebook/ads/redexgen/X/1U;)V

    return-void
.end method


# virtual methods
.method public final A00()Ljava/lang/String;
    .locals 1

    .line 4143
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1V;->A00:Ljava/lang/String;

    return-object v0
.end method

.method public final A01()Ljava/lang/String;
    .locals 1

    .line 4144
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1V;->A01:Ljava/lang/String;

    return-object v0
.end method

.method public final A02()Ljava/lang/String;
    .locals 1

    .line 4145
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1V;->A02:Ljava/lang/String;

    return-object v0
.end method

.method public final A03()Ljava/lang/String;
    .locals 1

    .line 4146
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1V;->A03:Ljava/lang/String;

    return-object v0
.end method
