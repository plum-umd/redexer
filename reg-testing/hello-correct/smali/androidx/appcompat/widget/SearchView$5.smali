.class Landroidx/appcompat/widget/SearchView$5;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/SearchView;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/SearchView;)V
    .locals 0

    .line 975
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView$5;->this$0:Landroidx/appcompat/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/appcompat/widget/SearchView$5;"

    const-string v1, "onClick"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/widget/SearchView$5;->this$0:Landroidx/appcompat/widget/SearchView;

    iget-object v5, v5, Landroidx/appcompat/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    if-ne p1, v5, :cond_0

    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$5;->this$0:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->onSearchClicked()V

    goto :goto_0

    :cond_0
    iget-object v5, p0, Landroidx/appcompat/widget/SearchView$5;->this$0:Landroidx/appcompat/widget/SearchView;

    iget-object v5, v5, Landroidx/appcompat/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    if-ne p1, v5, :cond_1

    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$5;->this$0:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->onCloseClicked()V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Landroidx/appcompat/widget/SearchView$5;->this$0:Landroidx/appcompat/widget/SearchView;

    iget-object v5, v5, Landroidx/appcompat/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    if-ne p1, v5, :cond_2

    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$5;->this$0:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->onSubmitQuery()V

    goto :goto_0

    :cond_2
    iget-object v5, p0, Landroidx/appcompat/widget/SearchView$5;->this$0:Landroidx/appcompat/widget/SearchView;

    iget-object v5, v5, Landroidx/appcompat/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    if-ne p1, v5, :cond_3

    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$5;->this$0:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->onVoiceClicked()V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Landroidx/appcompat/widget/SearchView$5;->this$0:Landroidx/appcompat/widget/SearchView;

    iget-object v5, v5, Landroidx/appcompat/widget/SearchView;->mSearchSrcTextView:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    if-ne p1, v5, :cond_4

    iget-object p1, p0, Landroidx/appcompat/widget/SearchView$5;->this$0:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView;->forceSuggestionQuery()V

    :cond_4
    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/widget/SearchView$5;"

    const-string v1, "onClick"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
