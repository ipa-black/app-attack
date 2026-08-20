.class public final enum Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;
.super Ljava/lang/Enum;
.source "MainNavigationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/MainNavigationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApplicationMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

.field public static final enum COMMON:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

.field public static final enum CUSTOM:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

.field public static final enum UNKNOWN:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;


# direct methods
.method private static synthetic $values()[Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;
    .locals 3

    .line 1512
    sget-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->UNKNOWN:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    sget-object v1, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->COMMON:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    sget-object v2, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->CUSTOM:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    filled-new-array {v0, v1, v2}, [Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1513
    new-instance v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->UNKNOWN:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    new-instance v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    const-string v1, "COMMON"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->COMMON:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    new-instance v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    const-string v1, "CUSTOM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->CUSTOM:Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    .line 1512
    invoke-static {}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->$values()[Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    move-result-object v0

    sput-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->$VALUES:[Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1512
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;
    .locals 1

    .line 1512
    const-class v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    return-object p0
.end method

.method public static values()[Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;
    .locals 1

    .line 1512
    sget-object v0, Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->$VALUES:[Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    invoke-virtual {v0}, [Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsgeyser/multiTabApp/MainNavigationActivity$ApplicationMode;

    return-object v0
.end method
