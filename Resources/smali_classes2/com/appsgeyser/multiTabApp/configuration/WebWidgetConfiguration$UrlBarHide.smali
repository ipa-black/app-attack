.class public final enum Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;
.super Ljava/lang/Enum;
.source "WebWidgetConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UrlBarHide"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;

.field public static final enum DISABLED:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;

.field public static final enum ENABLED:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;


# direct methods
.method private static synthetic $values()[Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;
    .locals 2

    .line 64
    sget-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;->ENABLED:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;

    sget-object v1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;->DISABLED:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;

    filled-new-array {v0, v1}, [Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 65
    new-instance v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;

    const-string v1, "ENABLED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;->ENABLED:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;

    new-instance v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;

    const-string v1, "DISABLED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;->DISABLED:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;

    .line 64
    invoke-static {}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;->$values()[Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;

    move-result-object v0

    sput-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;->$VALUES:[Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;
    .locals 1

    .line 64
    const-class v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;

    return-object p0
.end method

.method public static values()[Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;
    .locals 1

    .line 64
    sget-object v0, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;->$VALUES:[Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;

    invoke-virtual {v0}, [Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$UrlBarHide;

    return-object v0
.end method
