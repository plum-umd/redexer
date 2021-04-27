.class Landroidx/appcompat/widget/Toolbar$3;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/Toolbar;->ensureCollapseButtonView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/Toolbar;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    .line 1380
    iput-object p1, p0, Landroidx/appcompat/widget/Toolbar$3;->this$0:Landroidx/appcompat/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/appcompat/widget/Toolbar$3;"

    const-string v1, "onClick"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/appcompat/widget/Toolbar$3;->this$0:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->collapseActionView()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/Toolbar$3;"

    const-string v1, "onClick"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
