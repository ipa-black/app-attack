.class public final enum Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;
.super Ljava/lang/Enum;
.source "InternalEntryPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/sdk/InternalEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;

.field public static final enum ON_PAUSE:Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;

.field public static final enum ON_RESUME:Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;


# direct methods
.method private static synthetic $values()[Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;
    .locals 2

    .line 694
    sget-object v0, Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;->ON_RESUME:Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;

    sget-object v1, Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;->ON_PAUSE:Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;

    filled-new-array {v0, v1}, [Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 695
    new-instance v0, Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;

    const-string v1, "ON_RESUME"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;->ON_RESUME:Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;

    new-instance v0, Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;

    const-string v1, "ON_PAUSE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;->ON_PAUSE:Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;

    .line 694
    invoke-static {}, Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;->$values()[Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;

    move-result-object v0

    sput-object v0, Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;->$VALUES:[Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 694
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;
    .locals 1

    .line 694
    const-class v0, Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;

    return-object p0
.end method

.method public static values()[Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;
    .locals 1

    .line 694
    sget-object v0, Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;->$VALUES:[Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;

    invoke-virtual {v0}, [Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsgeyser/sdk/InternalEntryPoint$AppState;

    return-object v0
.end method
