.class public final enum Lcom/appodeal/ads/utils/app/AppState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appodeal/ads/utils/app/AppState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appodeal/ads/utils/app/AppState;

.field public static final enum ConfChanged:Lcom/appodeal/ads/utils/app/AppState;

.field public static final enum Created:Lcom/appodeal/ads/utils/app/AppState;

.field public static final enum Destroyed:Lcom/appodeal/ads/utils/app/AppState;

.field public static final enum Paused:Lcom/appodeal/ads/utils/app/AppState;

.field public static final enum Resumed:Lcom/appodeal/ads/utils/app/AppState;

.field public static final enum Started:Lcom/appodeal/ads/utils/app/AppState;

.field public static final enum Stopped:Lcom/appodeal/ads/utils/app/AppState;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/appodeal/ads/utils/app/AppState;

    const-string v1, "Created"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appodeal/ads/utils/app/AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appodeal/ads/utils/app/AppState;->Created:Lcom/appodeal/ads/utils/app/AppState;

    new-instance v1, Lcom/appodeal/ads/utils/app/AppState;

    const-string v2, "Started"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/appodeal/ads/utils/app/AppState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/appodeal/ads/utils/app/AppState;->Started:Lcom/appodeal/ads/utils/app/AppState;

    new-instance v2, Lcom/appodeal/ads/utils/app/AppState;

    const-string v3, "Resumed"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/appodeal/ads/utils/app/AppState;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/appodeal/ads/utils/app/AppState;->Resumed:Lcom/appodeal/ads/utils/app/AppState;

    new-instance v3, Lcom/appodeal/ads/utils/app/AppState;

    const-string v4, "Paused"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/appodeal/ads/utils/app/AppState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/appodeal/ads/utils/app/AppState;->Paused:Lcom/appodeal/ads/utils/app/AppState;

    new-instance v4, Lcom/appodeal/ads/utils/app/AppState;

    const-string v5, "Stopped"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/appodeal/ads/utils/app/AppState;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/appodeal/ads/utils/app/AppState;->Stopped:Lcom/appodeal/ads/utils/app/AppState;

    new-instance v5, Lcom/appodeal/ads/utils/app/AppState;

    const-string v6, "Destroyed"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/appodeal/ads/utils/app/AppState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/appodeal/ads/utils/app/AppState;->Destroyed:Lcom/appodeal/ads/utils/app/AppState;

    new-instance v6, Lcom/appodeal/ads/utils/app/AppState;

    const-string v7, "ConfChanged"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/appodeal/ads/utils/app/AppState;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/appodeal/ads/utils/app/AppState;->ConfChanged:Lcom/appodeal/ads/utils/app/AppState;

    filled-new-array/range {v0 .. v6}, [Lcom/appodeal/ads/utils/app/AppState;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/utils/app/AppState;->$VALUES:[Lcom/appodeal/ads/utils/app/AppState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appodeal/ads/utils/app/AppState;
    .locals 1

    const-class v0, Lcom/appodeal/ads/utils/app/AppState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/utils/app/AppState;

    return-object p0
.end method

.method public static values()[Lcom/appodeal/ads/utils/app/AppState;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/utils/app/AppState;->$VALUES:[Lcom/appodeal/ads/utils/app/AppState;

    invoke-virtual {v0}, [Lcom/appodeal/ads/utils/app/AppState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appodeal/ads/utils/app/AppState;

    return-object v0
.end method
