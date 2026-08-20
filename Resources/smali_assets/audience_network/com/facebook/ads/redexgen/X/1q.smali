.class public final Lcom/facebook/ads/redexgen/X/1q;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:J

.field public final A01:Lcom/facebook/ads/redexgen/X/8B;

.field public final A02:Ljava/lang/String;

.field public final A03:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/8B;Ljava/lang/String;J)V
    .locals 0

    .line 4905
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4906
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/1q;->A03:Lorg/json/JSONObject;

    .line 4907
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/1q;->A01:Lcom/facebook/ads/redexgen/X/8B;

    .line 4908
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/1q;->A02:Ljava/lang/String;

    .line 4909
    iput-wide p4, p0, Lcom/facebook/ads/redexgen/X/1q;->A00:J

    .line 4910
    return-void
.end method


# virtual methods
.method public final A00()J
    .locals 2

    .line 4911
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/1q;->A00:J

    return-wide v0
.end method

.method public final A01()Lcom/facebook/ads/redexgen/X/8B;
    .locals 1

    .line 4912
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1q;->A01:Lcom/facebook/ads/redexgen/X/8B;

    return-object v0
.end method

.method public final A02()Ljava/lang/String;
    .locals 1

    .line 4913
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1q;->A02:Ljava/lang/String;

    return-object v0
.end method

.method public final A03()Lorg/json/JSONObject;
    .locals 1

    .line 4914
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/1q;->A03:Lorg/json/JSONObject;

    return-object v0
.end method
