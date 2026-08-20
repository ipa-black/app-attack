.class public final enum Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;
.super Ljava/lang/Enum;
.source "LimitAdTrackingEnabledStates.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;

.field public static final enum FALSE:Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;

.field public static final enum TRUE:Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;

.field public static final enum UNKNOWN:Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;


# direct methods
.method private static synthetic $values()[Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;
    .locals 3

    .line 3
    sget-object v0, Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;->TRUE:Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;

    sget-object v1, Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;->FALSE:Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;

    sget-object v2, Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;->UNKNOWN:Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;

    filled-new-array {v0, v1, v2}, [Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;

    const-string v1, "TRUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;->TRUE:Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;

    new-instance v0, Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;

    const-string v1, "FALSE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;->FALSE:Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;

    new-instance v0, Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;->UNKNOWN:Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;

    .line 3
    invoke-static {}, Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;->$values()[Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;

    move-result-object v0

    sput-object v0, Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;->$VALUES:[Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;
    .locals 1

    .line 3
    const-class v0, Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;

    return-object p0
.end method

.method public static values()[Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;
    .locals 1

    .line 3
    sget-object v0, Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;->$VALUES:[Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;

    invoke-virtual {v0}, [Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsgeyser/multiTabApp/deviceidparser/LimitAdTrackingEnabledStates;

    return-object v0
.end method
