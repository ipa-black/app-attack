.class public Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;
.super Ljava/lang/Object;
.source "WidgetsController.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/multiTabApp/controllers/WidgetsController$WidgetEntityComparator;
    }
.end annotation


# instance fields
.field private _widgetCollection:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/appsgeyser/multiTabApp/model/WidgetEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->_widgetCollection:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public addWidget(Lcom/appsgeyser/multiTabApp/model/WidgetEntity;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->_widgetCollection:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 24
    new-instance p1, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController$WidgetEntityComparator;

    invoke-direct {p1, p0}, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController$WidgetEntityComparator;-><init>(Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;)V

    .line 25
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->_widgetCollection:Ljava/util/Vector;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public getEnumeration()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Lcom/appsgeyser/multiTabApp/model/WidgetEntity;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->_widgetCollection:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getTabByPosition(I)Lcom/appsgeyser/multiTabApp/model/WidgetEntity;
    .locals 5

    .line 126
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->_widgetCollection:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    .line 127
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getConfig()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getTabsPosition()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    move-result-object v3

    sget-object v4, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;->BOTTOM_MENU:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    if-ne v3, v4, :cond_2

    if-ne v1, p1, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->isShowAsTab()Z

    move-result v3

    if-eqz v3, :cond_0

    if-ne v1, p1, :cond_1

    return-object v2

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public getWidgetById(Ljava/lang/String;)Lcom/appsgeyser/multiTabApp/model/WidgetEntity;
    .locals 3

    .line 31
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->_widgetCollection:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 32
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    .line 34
    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getWidgetByPosition(I)Lcom/appsgeyser/multiTabApp/model/WidgetEntity;
    .locals 1

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->_widgetCollection:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getWidgetByTabId(Ljava/lang/String;)Lcom/appsgeyser/multiTabApp/model/WidgetEntity;
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->_widgetCollection:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 77
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    .line 79
    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getWidgetCollection()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/appsgeyser/multiTabApp/model/WidgetEntity;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->_widgetCollection:Ljava/util/Vector;

    return-object v0
.end method

.method getWidgetPositionByTabId(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 88
    :goto_0
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->_widgetCollection:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->_widgetCollection:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getTabId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public removeAll()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->_widgetCollection:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public removeWidgetById(Ljava/lang/String;)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->_widgetCollection:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 53
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    .line 55
    invoke-virtual {v1}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public sortCollectionByShowingTabs()V
    .locals 5

    .line 149
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 150
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 152
    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->_widgetCollection:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    .line 153
    invoke-virtual {v3}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->isShowAsTab()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 154
    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 162
    iput-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->_widgetCollection:Ljava/util/Vector;

    return-void
.end method

.method public tabsCount()I
    .locals 3

    .line 111
    invoke-static {}, Lcom/appsgeyser/multiTabApp/Factory;->getInstance()Lcom/appsgeyser/multiTabApp/Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/Factory;->getMainNavigationActivity()Lcom/appsgeyser/multiTabApp/MainNavigationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/MainNavigationActivity;->getConfig()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration;->getTabsPosition()Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    move-result-object v0

    sget-object v1, Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;->BOTTOM_MENU:Lcom/appsgeyser/multiTabApp/configuration/WebWidgetConfiguration$TabsPositions;

    if-ne v0, v1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->_widgetCollection:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->_widgetCollection:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;

    .line 116
    invoke-virtual {v2}, Lcom/appsgeyser/multiTabApp/model/WidgetEntity;->isShowAsTab()Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public widgetsCount()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/controllers/WidgetsController;->_widgetCollection:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method
