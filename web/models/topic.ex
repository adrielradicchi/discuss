defmodule Discuss.Topic do 
    use Discuss.Web, :model

    schema "topics" do
        field :tittle, :string
    end

    def changeset(struct, params \\ %{}) do
        struct 
        |> cast(params, [:tittle])
        |> validate_required([:tittle])
    end
end