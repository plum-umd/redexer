.class Landroidx/appcompat/widget/ShareActionProvider$ShareActivityChooserModelPolicy;
.super Ljava/lang/Object;
.source "ShareActionProvider.java"

# interfaces
.implements Landroidx/appcompat/widget/ActivityChooserModel$OnChooseActivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ShareActionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShareActivityChooserModelPolicy"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/ShareActionProvider;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ShareActionProvider;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/ShareActionProvider$ShareActivityChooserModelPolicy;->this$0:Landroidx/appcompat/widget/ShareActionProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChooseActivity(Landroidx/appcompat/widget/ActivityChooserModel;Landroid/content/Intent;)Z
    .locals 6

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Landroidx/appcompat/widget/ShareActionProvider$ShareActivityChooserModelPolicy;"

    const-string v1, "onChooseActivity"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/appcompat/widget/ShareActionProvider$ShareActivityChooserModelPolicy;->this$0:Landroidx/appcompat/widget/ShareActionProvider;

    iget-object p1, p1, Landroidx/appcompat/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Landroidx/appcompat/widget/ShareActionProvider$OnShareTargetSelectedListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/widget/ShareActionProvider$ShareActivityChooserModelPolicy;->this$0:Landroidx/appcompat/widget/ShareActionProvider;

    iget-object p1, p1, Landroidx/appcompat/widget/ShareActionProvider;->mOnShareTargetSelectedListener:Landroidx/appcompat/widget/ShareActionProvider$OnShareTargetSelectedListener;

    iget-object v5, p0, Landroidx/appcompat/widget/ShareActionProvider$ShareActivityChooserModelPolicy;->this$0:Landroidx/appcompat/widget/ShareActionProvider;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const/4 v1, 0x6

    aput-object p2, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onShareTargetSelected"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p1, v5, p2}, Landroidx/appcompat/widget/ShareActionProvider$OnShareTargetSelectedListener;->onShareTargetSelected(Landroidx/appcompat/widget/ShareActionProvider;Landroid/content/Intent;)Z

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onShareTargetSelected"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/ShareActionProvider$ShareActivityChooserModelPolicy;"

    const-string v1, "onChooseActivity"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method
