.class public final enum Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;
.super Ljava/lang/Enum;
.source "MainNavigationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/MainNavigationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApplicationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;

.field public static final enum EXITING:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;

.field public static final enum STARTED:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;


# direct methods
.method private static synthetic $values()[Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;
    .locals 2

    .line 1516
    sget-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;->STARTED:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;

    sget-object v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;->EXITING:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;

    filled-new-array {v0, v1}, [Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1517
    new-instance v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;

    const-string v1, "STARTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;->STARTED:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;

    new-instance v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;

    const-string v1, "EXITING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;->EXITING:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;

    .line 1516
    invoke-static {}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;->$values()[Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;

    move-result-object v0

    sput-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;->$VALUES:[Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1516
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;
    .locals 1

    .line 1516
    const-class v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;

    return-object p0
.end method

.method public static values()[Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;
    .locals 1

    .line 1516
    sget-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;->$VALUES:[Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;

    invoke-virtual {v0}, [Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationState;

    return-object v0
.end method
