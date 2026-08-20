.class public final enum Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;
.super Ljava/lang/Enum;
.source "MainNavigationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/MainNavigationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UserEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

.field public static final enum MENU_ITEM_CLICK:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

.field public static final enum PDF_EVENT:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

.field public static final enum TAB_CHANGED:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

.field public static final enum TOUCH:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

.field public static final enum WEB_PAGES_CHANGED:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;


# instance fields
.field private placementTag:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;
    .locals 5

    .line 1520
    sget-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->TOUCH:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    sget-object v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->MENU_ITEM_CLICK:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    sget-object v2, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->TAB_CHANGED:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    sget-object v3, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->WEB_PAGES_CHANGED:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    sget-object v4, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->PDF_EVENT:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1521
    new-instance v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    const/4 v1, 0x0

    const-string v2, "onTouch"

    const-string v3, "TOUCH"

    invoke-direct {v0, v3, v1, v2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->TOUCH:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    .line 1522
    new-instance v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    const/4 v1, 0x1

    const-string v2, "onMenuItemClick"

    const-string v3, "MENU_ITEM_CLICK"

    invoke-direct {v0, v3, v1, v2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->MENU_ITEM_CLICK:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    .line 1523
    new-instance v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    const/4 v1, 0x2

    const-string v2, "onTabChanged"

    const-string v3, "TAB_CHANGED"

    invoke-direct {v0, v3, v1, v2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->TAB_CHANGED:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    .line 1524
    new-instance v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    const/4 v1, 0x3

    const-string v2, "onWebPageChanged"

    const-string v3, "WEB_PAGES_CHANGED"

    invoke-direct {v0, v3, v1, v2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->WEB_PAGES_CHANGED:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    .line 1525
    new-instance v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    const/4 v1, 0x4

    const-string v2, "onPdfEvent"

    const-string v3, "PDF_EVENT"

    invoke-direct {v0, v3, v1, v2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->PDF_EVENT:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    .line 1520
    invoke-static {}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->$values()[Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    move-result-object v0

    sput-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->$VALUES:[Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1529
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1530
    iput-object p3, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->placementTag:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;
    .locals 1

    .line 1520
    const-class v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    return-object p0
.end method

.method public static values()[Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;
    .locals 1

    .line 1520
    sget-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->$VALUES:[Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    invoke-virtual {v0}, [Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;

    return-object v0
.end method


# virtual methods
.method public getPlacementTag()Ljava/lang/String;
    .locals 1

    .line 1534
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$UserEvent;->placementTag:Ljava/lang/String;

    return-object v0
.end method
