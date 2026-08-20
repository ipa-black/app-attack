.class public Lcom/appnext/core/ECPM;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private banner:Ljava/lang/String;

.field private ecpm:F

.field private ppr:F


# direct methods
.method public constructor <init>(FFLjava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/appnext/core/ECPM;->ecpm:F

    .line 10
    iput p2, p0, Lcom/appnext/core/ECPM;->ppr:F

    .line 11
    iput-object p3, p0, Lcom/appnext/core/ECPM;->banner:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final a(F)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/appnext/core/ECPM;->ecpm:F

    return-void
.end method

.method protected final ac(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/appnext/core/ECPM;->banner:Ljava/lang/String;

    return-void
.end method

.method protected final b(F)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/appnext/core/ECPM;->ppr:F

    return-void
.end method

.method public getBanner()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/appnext/core/ECPM;->banner:Ljava/lang/String;

    return-object v0
.end method

.method public getEcpm()F
    .locals 1

    .line 15
    iget v0, p0, Lcom/appnext/core/ECPM;->ecpm:F

    return v0
.end method

.method public getPpr()F
    .locals 1

    .line 23
    iget v0, p0, Lcom/appnext/core/ECPM;->ppr:F

    return v0
.end method
