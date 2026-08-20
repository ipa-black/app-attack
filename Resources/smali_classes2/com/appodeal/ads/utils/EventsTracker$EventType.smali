.class public final enum Lcom/appodeal/ads/utils/EventsTracker$EventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/utils/EventsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appodeal/ads/utils/EventsTracker$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appodeal/ads/utils/EventsTracker$EventType;

.field public static final enum Click:Lcom/appodeal/ads/utils/EventsTracker$EventType;

.field public static final enum Expired:Lcom/appodeal/ads/utils/EventsTracker$EventType;

.field public static final enum FailedToLoad:Lcom/appodeal/ads/utils/EventsTracker$EventType;

.field public static final enum Finish:Lcom/appodeal/ads/utils/EventsTracker$EventType;

.field public static final enum Impression:Lcom/appodeal/ads/utils/EventsTracker$EventType;

.field public static final enum InternalError:Lcom/appodeal/ads/utils/EventsTracker$EventType;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/appodeal/ads/utils/EventsTracker$EventType;

    const-string v1, "Impression"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appodeal/ads/utils/EventsTracker$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appodeal/ads/utils/EventsTracker$EventType;->Impression:Lcom/appodeal/ads/utils/EventsTracker$EventType;

    new-instance v1, Lcom/appodeal/ads/utils/EventsTracker$EventType;

    const-string v2, "Click"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/appodeal/ads/utils/EventsTracker$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/appodeal/ads/utils/EventsTracker$EventType;->Click:Lcom/appodeal/ads/utils/EventsTracker$EventType;

    new-instance v2, Lcom/appodeal/ads/utils/EventsTracker$EventType;

    const-string v3, "Finish"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/appodeal/ads/utils/EventsTracker$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/appodeal/ads/utils/EventsTracker$EventType;->Finish:Lcom/appodeal/ads/utils/EventsTracker$EventType;

    new-instance v3, Lcom/appodeal/ads/utils/EventsTracker$EventType;

    const-string v4, "FailedToLoad"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/appodeal/ads/utils/EventsTracker$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/appodeal/ads/utils/EventsTracker$EventType;->FailedToLoad:Lcom/appodeal/ads/utils/EventsTracker$EventType;

    new-instance v4, Lcom/appodeal/ads/utils/EventsTracker$EventType;

    const-string v5, "InternalError"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/appodeal/ads/utils/EventsTracker$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/appodeal/ads/utils/EventsTracker$EventType;->InternalError:Lcom/appodeal/ads/utils/EventsTracker$EventType;

    new-instance v5, Lcom/appodeal/ads/utils/EventsTracker$EventType;

    const-string v6, "Expired"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/appodeal/ads/utils/EventsTracker$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/appodeal/ads/utils/EventsTracker$EventType;->Expired:Lcom/appodeal/ads/utils/EventsTracker$EventType;

    filled-new-array/range {v0 .. v5}, [Lcom/appodeal/ads/utils/EventsTracker$EventType;

    move-result-object v0

    sput-object v0, Lcom/appodeal/ads/utils/EventsTracker$EventType;->$VALUES:[Lcom/appodeal/ads/utils/EventsTracker$EventType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/appodeal/ads/utils/EventsTracker$EventType;
    .locals 1

    const-class v0, Lcom/appodeal/ads/utils/EventsTracker$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/utils/EventsTracker$EventType;

    return-object p0
.end method

.method public static values()[Lcom/appodeal/ads/utils/EventsTracker$EventType;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/utils/EventsTracker$EventType;->$VALUES:[Lcom/appodeal/ads/utils/EventsTracker$EventType;

    invoke-virtual {v0}, [Lcom/appodeal/ads/utils/EventsTracker$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appodeal/ads/utils/EventsTracker$EventType;

    return-object v0
.end method
