.class public final enum Lcom/appodeal/ads/e0;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appodeal/ads/e0;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/appodeal/ads/e0;

.field public static final enum c:Lcom/appodeal/ads/e0;

.field public static final enum d:Lcom/appodeal/ads/e0;

.field public static final enum e:Lcom/appodeal/ads/e0;

.field public static final enum f:Lcom/appodeal/ads/e0;

.field public static final enum g:Lcom/appodeal/ads/e0;

.field public static final enum h:Lcom/appodeal/ads/e0;

.field public static final enum i:Lcom/appodeal/ads/e0;

.field public static final enum j:Lcom/appodeal/ads/e0;

.field public static final synthetic k:[Lcom/appodeal/ads/e0;


# instance fields
.field public final a:Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/appodeal/ads/e0;

    sget-object v1, Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;->SUCCESSFUL:Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;

    const-string v2, "Successful"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/appodeal/ads/e0;-><init>(Ljava/lang/String;ILcom/appodeal/ads/api/Stats$AdUnitRequestResult;)V

    sput-object v0, Lcom/appodeal/ads/e0;->b:Lcom/appodeal/ads/e0;

    new-instance v1, Lcom/appodeal/ads/e0;

    sget-object v2, Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;->NOFILL:Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;

    const-string v3, "NoFill"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/appodeal/ads/e0;-><init>(Ljava/lang/String;ILcom/appodeal/ads/api/Stats$AdUnitRequestResult;)V

    sput-object v1, Lcom/appodeal/ads/e0;->c:Lcom/appodeal/ads/e0;

    new-instance v2, Lcom/appodeal/ads/e0;

    sget-object v3, Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;->TIMEOUTREACHED:Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;

    const-string v4, "TimeOutReached"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/appodeal/ads/e0;-><init>(Ljava/lang/String;ILcom/appodeal/ads/api/Stats$AdUnitRequestResult;)V

    sput-object v2, Lcom/appodeal/ads/e0;->d:Lcom/appodeal/ads/e0;

    new-instance v3, Lcom/appodeal/ads/e0;

    sget-object v4, Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;->EXCEPTION:Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;

    const-string v5, "Exception"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/appodeal/ads/e0;-><init>(Ljava/lang/String;ILcom/appodeal/ads/api/Stats$AdUnitRequestResult;)V

    sput-object v3, Lcom/appodeal/ads/e0;->e:Lcom/appodeal/ads/e0;

    new-instance v4, Lcom/appodeal/ads/e0;

    sget-object v5, Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;->UNDEFINEDADAPTER:Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;

    const-string v6, "UndefinedAdapter"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lcom/appodeal/ads/e0;-><init>(Ljava/lang/String;ILcom/appodeal/ads/api/Stats$AdUnitRequestResult;)V

    sput-object v4, Lcom/appodeal/ads/e0;->f:Lcom/appodeal/ads/e0;

    new-instance v5, Lcom/appodeal/ads/e0;

    sget-object v6, Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;->INCORRECTADUNIT:Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;

    const-string v7, "IncorrectAdunit"

    const/4 v8, 0x5

    invoke-direct {v5, v7, v8, v6}, Lcom/appodeal/ads/e0;-><init>(Ljava/lang/String;ILcom/appodeal/ads/api/Stats$AdUnitRequestResult;)V

    sput-object v5, Lcom/appodeal/ads/e0;->g:Lcom/appodeal/ads/e0;

    new-instance v6, Lcom/appodeal/ads/e0;

    sget-object v7, Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;->INVALIDASSETS:Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;

    const-string v8, "InvalidAssets"

    const/4 v9, 0x6

    invoke-direct {v6, v8, v9, v7}, Lcom/appodeal/ads/e0;-><init>(Ljava/lang/String;ILcom/appodeal/ads/api/Stats$AdUnitRequestResult;)V

    sput-object v6, Lcom/appodeal/ads/e0;->h:Lcom/appodeal/ads/e0;

    new-instance v7, Lcom/appodeal/ads/e0;

    sget-object v8, Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;->UNRECOGNIZED:Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;

    const-string v9, "Unrecognized"

    const/4 v10, 0x7

    invoke-direct {v7, v9, v10, v8}, Lcom/appodeal/ads/e0;-><init>(Ljava/lang/String;ILcom/appodeal/ads/api/Stats$AdUnitRequestResult;)V

    new-instance v8, Lcom/appodeal/ads/e0;

    sget-object v9, Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;->CANCELED:Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;

    const-string v10, "Canceled"

    const/16 v11, 0x8

    invoke-direct {v8, v10, v11, v9}, Lcom/appodeal/ads/e0;-><init>(Ljava/lang/String;ILcom/appodeal/ads/api/Stats$AdUnitRequestResult;)V

    sput-object v8, Lcom/appodeal/ads/e0;->i:Lcom/appodeal/ads/e0;

    new-instance v9, Lcom/appodeal/ads/e0;

    sget-object v10, Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;->EXCEPTION:Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;

    const-string v11, "IncorrectCreative"

    const/16 v12, 0x9

    invoke-direct {v9, v11, v12, v10}, Lcom/appodeal/ads/e0;-><init>(Ljava/lang/String;ILcom/appodeal/ads/api/Stats$AdUnitRequestResult;)V

    sput-object v9, Lcom/appodeal/ads/e0;->j:Lcom/appodeal/ads/e0;

    .line 1
    filled-new-array/range {v0 .. v9}, [Lcom/appodeal/ads/e0;

    move-result-object v0

    .line 2
    sput-object v0, Lcom/appodeal/ads/e0;->k:[Lcom/appodeal/ads/e0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/appodeal/ads/api/Stats$AdUnitRequestResult;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/appodeal/ads/e0;->a:Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appodeal/ads/e0;
    .locals 1

    const-class v0, Lcom/appodeal/ads/e0;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/e0;

    return-object p0
.end method

.method public static values()[Lcom/appodeal/ads/e0;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/e0;->k:[Lcom/appodeal/ads/e0;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appodeal/ads/e0;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/e0;->a:Lcom/appodeal/ads/api/Stats$AdUnitRequestResult;

    return-object v0
.end method
